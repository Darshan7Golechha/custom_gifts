import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';

abstract class IUserRepository {
  Future<Either<ApiFailure, User>> getUser({required String userID});

  // Future<Either<ApiFailure, User>> getUserByUserName(
  //     {required String userName});

  Future<Either<ApiFailure, bool>> addUser({required User user});

  Future<Either<ApiFailure, bool>> readMessages();
  Future<Either<ApiFailure, List<User>>> getAllVendors();
  Future<Either<ApiFailure, bool>> editUserProfilePhoto(
      {required User user, required String? selectedUserImage});
  Future<Either<ApiFailure, bool>> editUser({required User user});

  // Future<Either<ApiFailure, bool>> editUser({required User user});

  // Future<Either<ApiFailure, bool>> editUserProfilePhoto(
  //     {required User user, required String? selectedUserImage});

  // Future<Either<ApiFailure, bool>> editCoverPhoto(
  //     {required User user, required String? selectedCoverImage});

  // Future<Either<ApiFailure, List<User>>> searchUsers(
  //     {required String searchText});

  // Future<Either<ApiFailure, List<User>>> getSuggestedUsers();

  // Future<Either<ApiFailure, bool>> readNotifications();

  // Future<Either<ApiFailure, bool>> readMessages();

  // Future<Either<ApiFailure, int>> fetchItemCountForUser(
  //     {required String userID});
  // Future<Either<ApiFailure, bool>> deleteUser();
}
