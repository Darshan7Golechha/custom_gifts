// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      userID: json['userID'] as String? ?? '',
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      photoURL: json['photoURL'] as String? ?? '',
      coverPhotoURL: json['coverPhotoURL'] as String? ?? '',
      about: json['about'] as String? ?? '',
      unreadNotificationsCount:
          (json['unreadNotificationsCount'] as num?)?.toInt() ?? 0,
      unreadMessagesCount: (json['unreadMessagesCount'] as num?)?.toInt() ?? 0,
      isSeller: json['isSeller'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
      isBlocked: json['isBlocked'] as bool? ?? false,
      unreadNotifications: json['unreadNotifications'] as bool? ?? false,
      unreadMessages: json['unreadMessages'] as bool? ?? false,
      welcomeMailSent: json['welcomeMailSent'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'username': instance.username,
      'email': instance.email,
      'fullName': instance.fullName,
      'photoURL': instance.photoURL,
      'coverPhotoURL': instance.coverPhotoURL,
      'about': instance.about,
      'unreadNotificationsCount': instance.unreadNotificationsCount,
      'unreadMessagesCount': instance.unreadMessagesCount,
      'isSeller': instance.isSeller,
      'isDeleted': instance.isDeleted,
      'isBlocked': instance.isBlocked,
      'unreadNotifications': instance.unreadNotifications,
      'unreadMessages': instance.unreadMessages,
      'welcomeMailSent': instance.welcomeMailSent,
    };
