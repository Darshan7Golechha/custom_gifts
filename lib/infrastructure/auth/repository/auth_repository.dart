import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as u;
import 'package:flutter_application_1/domain/auth/repository/i_auth_repository.dart';
import 'package:flutter_application_1/domain/auth/value/value_objects.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:flutter_application_1/infrastructure/auth/datasource/auth_remote.dart';
import 'package:flutter_application_1/infrastructure/core/services/mailing_service.dart';
import 'package:flutter_application_1/infrastructure/user/datasource/user_remote.dart';
import 'package:flutter_application_1/infrastructure/user/dtos/user_dto.dart';

class AuthRepository implements IAuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final UserRemoteDataSource userRemoteDataSource;
  final MailingService mailingService;

  AuthRepository({
    required this.authRemoteDataSource,
    required this.userRemoteDataSource,
    required this.mailingService,
  });

  @override
  Future<Either<ApiFailure, User>> signIn({
    required EmailAddress emailAddress,
    required StringValue password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final userID = await authRemoteDataSource.signIn(
        email: emailAddressStr,
        password: passwordStr,
      );
      if (!u.FirebaseAuth.instance.currentUser!.emailVerified) {
        await u.FirebaseAuth.instance.currentUser?.sendEmailVerification();
        await authRemoteDataSource.logOut();
        return const Left(
          ApiFailure.other(
              'Check your email inbox and SPAM folder. You MUST verify your email address by clicking the link in the email before you can login to your MySecrets account.'),
        );
      }

      UserDto userDto = await userRemoteDataSource.getUser(userID);

      if (!userDto.welcomeMailSent) {
        await mailingService.sendMail(
          userID,
          MailingService.mailTypeWelcome,
        );
        // await userRemoteDataSource
        //     .editUser(userDto.toDomain().copyWith(welcomeMailSent: true));
      }

      return Right(userDto.toDomain());
    } on u.FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return const Left(ApiFailure.other(
            'There is no user corresponding to this email. Please click “Create a new account” to sign up for MySecrets'));
      } else {
        return Left(ApiFailure.other(e.message ?? 'Unknown error ${e.code}'));
      }
    }
  }

  @override
  Future<Either<ApiFailure, User>> signUp({
    required StringValue fullName,
    required EmailAddress emailAddress,
    required StringValue password,
    required StringValue userName,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password;
    try {
      bool usernameExists = await userRemoteDataSource
          .checkIfUsernameExists(userName.getOrDefaultValue(''));
      if (!usernameExists) {
        final userID = await authRemoteDataSource.signUp(
          email: emailAddressStr,
          password: passwordStr.getOrCrash(),
        );
        User user = User.empty().copyWith(
          fullName: fullName.getOrCrash(),
          email: emailAddress.getOrCrash(),
          username: userName.getOrCrash(),
          userID: userID,
          // createdDate: DateTime.now(),
        );
        print("User created in Auth: $userID");

        try {
          await userRemoteDataSource.addUser(user);
          return Right(user);
        } catch (e) {
          print("Database error: $e");
          // Consider deleting the auth user if database creation fails
          // await authRemoteDataSource.deleteUser();
          return Left(ApiFailure.other('Failed to create user profile: $e'));
        }
      } else {
        return const Left(ApiFailure.other(
            'Username not available. Please choose another one.'));
      }
    } on u.FirebaseAuthException catch (e) {
      return Left(ApiFailure.other(e.message ?? 'Unknown error ${e.code}'));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> resetPassword(
      {required EmailAddress emailAddress}) async {
    try {
      await authRemoteDataSource.resetPassword(
        email: emailAddress.getOrCrash(),
      );

      return const Right(true);
    } on u.FirebaseAuthException catch (e) {
      return Left(ApiFailure.serverError(e.message!));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> logOut() async {
    try {
      await authRemoteDataSource.logOut();
      return const Right(true);
    } on u.FirebaseAuthException catch (_) {
      return const Left(ApiFailure.serverError('Server Error'));
    }
  }
}
