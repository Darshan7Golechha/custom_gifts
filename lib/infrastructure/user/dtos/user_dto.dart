// ignore_for_file: invalid_annotation_target

import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(name: 'userID', defaultValue: '') required String userID,
    @JsonKey(name: 'username', defaultValue: '') required String username,
    @JsonKey(name: 'email', defaultValue: '') required String email,
    @JsonKey(name: 'fullName', defaultValue: '') required String fullName,
    @JsonKey(name: 'photoURL', defaultValue: '') required String photoURL,
    @JsonKey(name: 'coverPhotoURL', defaultValue: '')
    required String coverPhotoURL,
    @JsonKey(name: 'about', defaultValue: '') required String about,
    @JsonKey(name: 'unreadNotificationsCount', defaultValue: 0)
    required int unreadNotificationsCount,
    @JsonKey(name: 'unreadMessagesCount', defaultValue: 0)
    required int unreadMessagesCount,
    @JsonKey(name: 'isSeller', defaultValue: false) required bool isSeller,
    @JsonKey(name: 'isDeleted', defaultValue: false) required bool isDeleted,
    @JsonKey(name: 'isBlocked', defaultValue: false) required bool isBlocked,
    @JsonKey(name: 'unreadNotifications', defaultValue: false)
    required bool unreadNotifications,
    @JsonKey(name: 'unreadMessages', defaultValue: false)
    required bool unreadMessages,
    @JsonKey(name: 'welcomeMailSent', defaultValue: false)
    required bool welcomeMailSent,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      userID: user.userID,
      username: user.username,
      email: user.email,
      fullName: user.fullName,
      photoURL: user.photoURL,
      about: user.about,
      unreadNotificationsCount: user.unreadNotificationsCount,
      unreadMessagesCount: user.unreadMessagesCount,
      coverPhotoURL: user.coverPhotoURL,
      isDeleted: user.isDeleted,
      isBlocked: user.isBlocked,
      unreadMessages: user.unreadMessages,
      welcomeMailSent: user.welcomeMailSent,
      unreadNotifications: user.unreadNotifications,
      isSeller: false,
    );
  }

  User toDomain() {
    return User(
      userID: userID,
      isSeller: false,
      username: username,
      email: email,
      fullName: fullName,
      photoURL: photoURL,
      coverPhotoURL: coverPhotoURL,
      about: about,
      unreadNotificationsCount: unreadNotificationsCount,
      unreadMessagesCount: unreadMessagesCount,
      isBlocked: isBlocked,
      isDeleted: isDeleted,
      unreadMessages: unreadMessages,
      welcomeMailSent: welcomeMailSent,
      unreadNotifications: unreadNotifications,
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
