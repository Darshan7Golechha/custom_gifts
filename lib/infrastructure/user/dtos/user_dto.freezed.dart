// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: 'userID', defaultValue: '')
  String get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'username', defaultValue: '')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email', defaultValue: '')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName', defaultValue: '')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'photoURL', defaultValue: '')
  String get photoURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverPhotoURL', defaultValue: '')
  String get coverPhotoURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'about', defaultValue: '')
  String get about => throw _privateConstructorUsedError;
  @JsonKey(name: 'unreadNotificationsCount', defaultValue: 0)
  int get unreadNotificationsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'unreadMessagesCount', defaultValue: 0)
  int get unreadMessagesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSeller', defaultValue: false)
  bool get isSeller => throw _privateConstructorUsedError;
  @JsonKey(name: 'isDeleted', defaultValue: false)
  bool get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'isBlocked', defaultValue: false)
  bool get isBlocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'unreadNotifications', defaultValue: false)
  bool get unreadNotifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'unreadMessages', defaultValue: false)
  bool get unreadMessages => throw _privateConstructorUsedError;
  @JsonKey(name: 'welcomeMailSent', defaultValue: false)
  bool get welcomeMailSent => throw _privateConstructorUsedError;

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userID', defaultValue: '') String userID,
      @JsonKey(name: 'username', defaultValue: '') String username,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'fullName', defaultValue: '') String fullName,
      @JsonKey(name: 'photoURL', defaultValue: '') String photoURL,
      @JsonKey(name: 'coverPhotoURL', defaultValue: '') String coverPhotoURL,
      @JsonKey(name: 'about', defaultValue: '') String about,
      @JsonKey(name: 'unreadNotificationsCount', defaultValue: 0)
      int unreadNotificationsCount,
      @JsonKey(name: 'unreadMessagesCount', defaultValue: 0)
      int unreadMessagesCount,
      @JsonKey(name: 'isSeller', defaultValue: false) bool isSeller,
      @JsonKey(name: 'isDeleted', defaultValue: false) bool isDeleted,
      @JsonKey(name: 'isBlocked', defaultValue: false) bool isBlocked,
      @JsonKey(name: 'unreadNotifications', defaultValue: false)
      bool unreadNotifications,
      @JsonKey(name: 'unreadMessages', defaultValue: false) bool unreadMessages,
      @JsonKey(name: 'welcomeMailSent', defaultValue: false)
      bool welcomeMailSent});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? username = null,
    Object? email = null,
    Object? fullName = null,
    Object? photoURL = null,
    Object? coverPhotoURL = null,
    Object? about = null,
    Object? unreadNotificationsCount = null,
    Object? unreadMessagesCount = null,
    Object? isSeller = null,
    Object? isDeleted = null,
    Object? isBlocked = null,
    Object? unreadNotifications = null,
    Object? unreadMessages = null,
    Object? welcomeMailSent = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      coverPhotoURL: null == coverPhotoURL
          ? _value.coverPhotoURL
          : coverPhotoURL // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      unreadNotificationsCount: null == unreadNotificationsCount
          ? _value.unreadNotificationsCount
          : unreadNotificationsCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadMessagesCount: null == unreadMessagesCount
          ? _value.unreadMessagesCount
          : unreadMessagesCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSeller: null == isSeller
          ? _value.isSeller
          : isSeller // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadNotifications: null == unreadNotifications
          ? _value.unreadNotifications
          : unreadNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadMessages: null == unreadMessages
          ? _value.unreadMessages
          : unreadMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      welcomeMailSent: null == welcomeMailSent
          ? _value.welcomeMailSent
          : welcomeMailSent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userID', defaultValue: '') String userID,
      @JsonKey(name: 'username', defaultValue: '') String username,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'fullName', defaultValue: '') String fullName,
      @JsonKey(name: 'photoURL', defaultValue: '') String photoURL,
      @JsonKey(name: 'coverPhotoURL', defaultValue: '') String coverPhotoURL,
      @JsonKey(name: 'about', defaultValue: '') String about,
      @JsonKey(name: 'unreadNotificationsCount', defaultValue: 0)
      int unreadNotificationsCount,
      @JsonKey(name: 'unreadMessagesCount', defaultValue: 0)
      int unreadMessagesCount,
      @JsonKey(name: 'isSeller', defaultValue: false) bool isSeller,
      @JsonKey(name: 'isDeleted', defaultValue: false) bool isDeleted,
      @JsonKey(name: 'isBlocked', defaultValue: false) bool isBlocked,
      @JsonKey(name: 'unreadNotifications', defaultValue: false)
      bool unreadNotifications,
      @JsonKey(name: 'unreadMessages', defaultValue: false) bool unreadMessages,
      @JsonKey(name: 'welcomeMailSent', defaultValue: false)
      bool welcomeMailSent});
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? username = null,
    Object? email = null,
    Object? fullName = null,
    Object? photoURL = null,
    Object? coverPhotoURL = null,
    Object? about = null,
    Object? unreadNotificationsCount = null,
    Object? unreadMessagesCount = null,
    Object? isSeller = null,
    Object? isDeleted = null,
    Object? isBlocked = null,
    Object? unreadNotifications = null,
    Object? unreadMessages = null,
    Object? welcomeMailSent = null,
  }) {
    return _then(_$UserDtoImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      coverPhotoURL: null == coverPhotoURL
          ? _value.coverPhotoURL
          : coverPhotoURL // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      unreadNotificationsCount: null == unreadNotificationsCount
          ? _value.unreadNotificationsCount
          : unreadNotificationsCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadMessagesCount: null == unreadMessagesCount
          ? _value.unreadMessagesCount
          : unreadMessagesCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSeller: null == isSeller
          ? _value.isSeller
          : isSeller // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadNotifications: null == unreadNotifications
          ? _value.unreadNotifications
          : unreadNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadMessages: null == unreadMessages
          ? _value.unreadMessages
          : unreadMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      welcomeMailSent: null == welcomeMailSent
          ? _value.welcomeMailSent
          : welcomeMailSent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoImpl extends _UserDto {
  const _$UserDtoImpl(
      {@JsonKey(name: 'userID', defaultValue: '') required this.userID,
      @JsonKey(name: 'username', defaultValue: '') required this.username,
      @JsonKey(name: 'email', defaultValue: '') required this.email,
      @JsonKey(name: 'fullName', defaultValue: '') required this.fullName,
      @JsonKey(name: 'photoURL', defaultValue: '') required this.photoURL,
      @JsonKey(name: 'coverPhotoURL', defaultValue: '')
      required this.coverPhotoURL,
      @JsonKey(name: 'about', defaultValue: '') required this.about,
      @JsonKey(name: 'unreadNotificationsCount', defaultValue: 0)
      required this.unreadNotificationsCount,
      @JsonKey(name: 'unreadMessagesCount', defaultValue: 0)
      required this.unreadMessagesCount,
      @JsonKey(name: 'isSeller', defaultValue: false) required this.isSeller,
      @JsonKey(name: 'isDeleted', defaultValue: false) required this.isDeleted,
      @JsonKey(name: 'isBlocked', defaultValue: false) required this.isBlocked,
      @JsonKey(name: 'unreadNotifications', defaultValue: false)
      required this.unreadNotifications,
      @JsonKey(name: 'unreadMessages', defaultValue: false)
      required this.unreadMessages,
      @JsonKey(name: 'welcomeMailSent', defaultValue: false)
      required this.welcomeMailSent})
      : super._();

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  @JsonKey(name: 'userID', defaultValue: '')
  final String userID;
  @override
  @JsonKey(name: 'username', defaultValue: '')
  final String username;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  final String email;
  @override
  @JsonKey(name: 'fullName', defaultValue: '')
  final String fullName;
  @override
  @JsonKey(name: 'photoURL', defaultValue: '')
  final String photoURL;
  @override
  @JsonKey(name: 'coverPhotoURL', defaultValue: '')
  final String coverPhotoURL;
  @override
  @JsonKey(name: 'about', defaultValue: '')
  final String about;
  @override
  @JsonKey(name: 'unreadNotificationsCount', defaultValue: 0)
  final int unreadNotificationsCount;
  @override
  @JsonKey(name: 'unreadMessagesCount', defaultValue: 0)
  final int unreadMessagesCount;
  @override
  @JsonKey(name: 'isSeller', defaultValue: false)
  final bool isSeller;
  @override
  @JsonKey(name: 'isDeleted', defaultValue: false)
  final bool isDeleted;
  @override
  @JsonKey(name: 'isBlocked', defaultValue: false)
  final bool isBlocked;
  @override
  @JsonKey(name: 'unreadNotifications', defaultValue: false)
  final bool unreadNotifications;
  @override
  @JsonKey(name: 'unreadMessages', defaultValue: false)
  final bool unreadMessages;
  @override
  @JsonKey(name: 'welcomeMailSent', defaultValue: false)
  final bool welcomeMailSent;

  @override
  String toString() {
    return 'UserDto(userID: $userID, username: $username, email: $email, fullName: $fullName, photoURL: $photoURL, coverPhotoURL: $coverPhotoURL, about: $about, unreadNotificationsCount: $unreadNotificationsCount, unreadMessagesCount: $unreadMessagesCount, isSeller: $isSeller, isDeleted: $isDeleted, isBlocked: $isBlocked, unreadNotifications: $unreadNotifications, unreadMessages: $unreadMessages, welcomeMailSent: $welcomeMailSent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.coverPhotoURL, coverPhotoURL) ||
                other.coverPhotoURL == coverPhotoURL) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(
                    other.unreadNotificationsCount, unreadNotificationsCount) ||
                other.unreadNotificationsCount == unreadNotificationsCount) &&
            (identical(other.unreadMessagesCount, unreadMessagesCount) ||
                other.unreadMessagesCount == unreadMessagesCount) &&
            (identical(other.isSeller, isSeller) ||
                other.isSeller == isSeller) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.unreadNotifications, unreadNotifications) ||
                other.unreadNotifications == unreadNotifications) &&
            (identical(other.unreadMessages, unreadMessages) ||
                other.unreadMessages == unreadMessages) &&
            (identical(other.welcomeMailSent, welcomeMailSent) ||
                other.welcomeMailSent == welcomeMailSent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userID,
      username,
      email,
      fullName,
      photoURL,
      coverPhotoURL,
      about,
      unreadNotificationsCount,
      unreadMessagesCount,
      isSeller,
      isDeleted,
      isBlocked,
      unreadNotifications,
      unreadMessages,
      welcomeMailSent);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {@JsonKey(name: 'userID', defaultValue: '') required final String userID,
      @JsonKey(name: 'username', defaultValue: '')
      required final String username,
      @JsonKey(name: 'email', defaultValue: '') required final String email,
      @JsonKey(name: 'fullName', defaultValue: '')
      required final String fullName,
      @JsonKey(name: 'photoURL', defaultValue: '')
      required final String photoURL,
      @JsonKey(name: 'coverPhotoURL', defaultValue: '')
      required final String coverPhotoURL,
      @JsonKey(name: 'about', defaultValue: '') required final String about,
      @JsonKey(name: 'unreadNotificationsCount', defaultValue: 0)
      required final int unreadNotificationsCount,
      @JsonKey(name: 'unreadMessagesCount', defaultValue: 0)
      required final int unreadMessagesCount,
      @JsonKey(name: 'isSeller', defaultValue: false)
      required final bool isSeller,
      @JsonKey(name: 'isDeleted', defaultValue: false)
      required final bool isDeleted,
      @JsonKey(name: 'isBlocked', defaultValue: false)
      required final bool isBlocked,
      @JsonKey(name: 'unreadNotifications', defaultValue: false)
      required final bool unreadNotifications,
      @JsonKey(name: 'unreadMessages', defaultValue: false)
      required final bool unreadMessages,
      @JsonKey(name: 'welcomeMailSent', defaultValue: false)
      required final bool welcomeMailSent}) = _$UserDtoImpl;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  @JsonKey(name: 'userID', defaultValue: '')
  String get userID;
  @override
  @JsonKey(name: 'username', defaultValue: '')
  String get username;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  String get email;
  @override
  @JsonKey(name: 'fullName', defaultValue: '')
  String get fullName;
  @override
  @JsonKey(name: 'photoURL', defaultValue: '')
  String get photoURL;
  @override
  @JsonKey(name: 'coverPhotoURL', defaultValue: '')
  String get coverPhotoURL;
  @override
  @JsonKey(name: 'about', defaultValue: '')
  String get about;
  @override
  @JsonKey(name: 'unreadNotificationsCount', defaultValue: 0)
  int get unreadNotificationsCount;
  @override
  @JsonKey(name: 'unreadMessagesCount', defaultValue: 0)
  int get unreadMessagesCount;
  @override
  @JsonKey(name: 'isSeller', defaultValue: false)
  bool get isSeller;
  @override
  @JsonKey(name: 'isDeleted', defaultValue: false)
  bool get isDeleted;
  @override
  @JsonKey(name: 'isBlocked', defaultValue: false)
  bool get isBlocked;
  @override
  @JsonKey(name: 'unreadNotifications', defaultValue: false)
  bool get unreadNotifications;
  @override
  @JsonKey(name: 'unreadMessages', defaultValue: false)
  bool get unreadMessages;
  @override
  @JsonKey(name: 'welcomeMailSent', defaultValue: false)
  bool get welcomeMailSent;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
