import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User(
      {required String userID,
      required String email,
      required String fullName,
      required String username,
      required String photoURL,
      required String coverPhotoURL,
      required String about,
      required int unreadNotificationsCount,
      required int unreadMessagesCount,
      required bool isDeleted,
      required bool isBlocked,
      required bool isSeller,
      required bool unreadMessages,
      required bool welcomeMailSent,
      required bool unreadNotifications,
      }) = _User;

  factory User.empty() =>const User(
        userID: '',
        username: '',
        email: '',
        fullName: '',
        photoURL: '',
        coverPhotoURL: '',
        about: '',
        unreadNotificationsCount: 0,
        unreadMessagesCount: 0,
        isDeleted: false,
        isBlocked: false,
        isSeller: false,
        unreadMessages: false,
        welcomeMailSent: false,
        unreadNotifications: false,
      );
}