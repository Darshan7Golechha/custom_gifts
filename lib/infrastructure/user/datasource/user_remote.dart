import 'dart:convert';
import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:flutter_application_1/infrastructure/user/dtos/user_dto.dart';

class UserRemoteDataSource {
  final userRef = FirebaseFirestore.instance
      .collection('users')
      .withConverter<UserDto>(
        fromFirestore: (snapshots, _) => UserDto.fromJson(snapshots.data()!),
        toFirestore: (userDto, _) => userDto.toJson(),
      );
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

  Future<bool> checkIfUsernameExists(String username) async {
    return (await userRef.where('username', isEqualTo: username).get())
        .docs
        .isNotEmpty;
  }

  Future<void> isSeller(String userID) async {
    return await userRef.doc(userID).update({'isSeller': true});
  }

  Future<void> addUser(User user) async {
    // User tempUser = user.copyWith(
    //     // search: _generateCaseSearch('${user.username} ${user.fullName}'));
    return await userRef.doc(user.userID).set(UserDto.fromDomain(user));
  }
}
