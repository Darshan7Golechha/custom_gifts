import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/auth/value/value_objects.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';

abstract class IAuthRepository {
  Future<Either<ApiFailure, User>> signIn({
    required EmailAddress emailAddress,
    required StringValue password,
  });

  Future<Either<ApiFailure, User>> signUp({
    required StringValue fullName,
    required EmailAddress emailAddress,
    required StringValue password,
    required StringValue userName,
  });

  Future<Either<ApiFailure, bool>> resetPassword({
    required EmailAddress emailAddress,
  });

  Future<Either<ApiFailure, bool>> logOut();
}
