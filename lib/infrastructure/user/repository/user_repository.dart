import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/core/error/failure_handler.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_application_1/domain/user/repository/i_user_repository.dart';
import 'package:flutter_application_1/infrastructure/user/datasource/user_remote.dart';

class UserRepository implements IUserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepository({
    required this.userRemoteDataSource,
  });

  @override
  Future<Either<ApiFailure, User>> getUser({required String userID}) async {
    try {
      final user = await userRemoteDataSource.getUser(userID);

      return Right(user.toDomain());
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> addUser({required User user}) async {
    try {
      await userRemoteDataSource.addUser(user);

      return const Right(true);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> readMessages() async {
    try {
      await userRemoteDataSource.updateReadMessagesStatus(
          auth.FirebaseAuth.instance.currentUser!.uid, false);

      return const Right(true);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
