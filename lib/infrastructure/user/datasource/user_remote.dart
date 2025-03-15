import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:flutter_application_1/infrastructure/user/dtos/user_dto.dart';

class UserRemoteDataSource {
  Future<UserDto> fetchUsersFromJson() async {
    try {
      // Load the JSON data from the assets
      final String response = await rootBundle.loadString('assets/users.json');

      // Parse the JSON data
      final Map<String, dynamic> data = json.decode(response);

      // Convert the JSON to a UserDto object
      return UserDto.fromJson(data);
    } catch (e) {
      throw Exception('Failed to fetch user: $e');
    }
  }

  Future<UserDto> getUser(String userID) async {
    try {
      final user = await fetchUsersFromJson();
      if (user.userID == userID) {
        return user;
      }
      return UserDto.fromDomain(User.empty().copyWith(userID: userID));
    } catch (e) {
      throw Exception('Failed to get user: $e');
    }
  }

  Future<void> addUser(User user) async {
    throw UnimplementedError("Add User is not supported in mock data.");
  }
}
