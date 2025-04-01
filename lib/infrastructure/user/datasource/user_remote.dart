import 'dart:convert';
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

  Future<UserDto> getUser(String userID) async {
    final user = (await userRef.doc(userID).get());
    return user.exists
        ? user.data()!
        : UserDto.fromDomain(User.empty().copyWith(fullName: userID));
  }

  Future<bool> checkIfUsernameExists(String username) async {
    return (await userRef.where('username', isEqualTo: username).get())
        .docs
        .isNotEmpty;
  }

  Future<List<UserDto>> getAllVendors() async {
    return (await userRef.where('isSeller', isEqualTo: true).limit(5).get())
        .docs
        .map((e) => e.data())
        .toList();
  }

  Future<void> addUser(User user) async {
    // User tempUser = user.copyWith(
    //     // search: _generateCaseSearch('${user.username} ${user.fullName}'));
    return await userRef.doc(user.userID).set(UserDto.fromDomain(user));
  }

  Future<void> updateReadMessagesStatus(String userID, bool value) async {
    var count = value ? FieldValue.increment(1) : 0;
    return await userRef.doc(userID).update({
      'unreadMessages': value,
      'unreadMessagesCount': count,
    });
  }

  Future<void> editUser(User user) async {
    // User tempUser = user.copyWith(
    //     search: _generateCaseSearch('${user.username} ${user.fullName}'));
    return await userRef
        .doc(user.userID)
        .update(UserDto.fromDomain(user).toJson());
  }
}
