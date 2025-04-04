// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialised,
    required TResult Function(String userID) fetchUserByUserID,
    required TResult Function(User user) addUser,
    required TResult Function() readMessages,
    required TResult Function() getAllVendors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialised,
    TResult? Function(String userID)? fetchUserByUserID,
    TResult? Function(User user)? addUser,
    TResult? Function()? readMessages,
    TResult? Function()? getAllVendors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialised,
    TResult Function(String userID)? fetchUserByUserID,
    TResult Function(User user)? addUser,
    TResult Function()? readMessages,
    TResult Function()? getAllVendors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) initialised,
    required TResult Function(_FetchUserByUserID value) fetchUserByUserID,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_UnreadMessages value) readMessages,
    required TResult Function(_GetAllVendors value) getAllVendors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialised value)? initialised,
    TResult? Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_UnreadMessages value)? readMessages,
    TResult? Function(_GetAllVendors value)? getAllVendors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? initialised,
    TResult Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_UnreadMessages value)? readMessages,
    TResult Function(_GetAllVendors value)? getAllVendors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IntialisedImplCopyWith<$Res> {
  factory _$$IntialisedImplCopyWith(
          _$IntialisedImpl value, $Res Function(_$IntialisedImpl) then) =
      __$$IntialisedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntialisedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$IntialisedImpl>
    implements _$$IntialisedImplCopyWith<$Res> {
  __$$IntialisedImplCopyWithImpl(
      _$IntialisedImpl _value, $Res Function(_$IntialisedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IntialisedImpl implements _Intialised {
  const _$IntialisedImpl();

  @override
  String toString() {
    return 'UserEvent.initialised()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IntialisedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialised,
    required TResult Function(String userID) fetchUserByUserID,
    required TResult Function(User user) addUser,
    required TResult Function() readMessages,
    required TResult Function() getAllVendors,
  }) {
    return initialised();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialised,
    TResult? Function(String userID)? fetchUserByUserID,
    TResult? Function(User user)? addUser,
    TResult? Function()? readMessages,
    TResult? Function()? getAllVendors,
  }) {
    return initialised?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialised,
    TResult Function(String userID)? fetchUserByUserID,
    TResult Function(User user)? addUser,
    TResult Function()? readMessages,
    TResult Function()? getAllVendors,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) initialised,
    required TResult Function(_FetchUserByUserID value) fetchUserByUserID,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_UnreadMessages value) readMessages,
    required TResult Function(_GetAllVendors value) getAllVendors,
  }) {
    return initialised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialised value)? initialised,
    TResult? Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_UnreadMessages value)? readMessages,
    TResult? Function(_GetAllVendors value)? getAllVendors,
  }) {
    return initialised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? initialised,
    TResult Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_UnreadMessages value)? readMessages,
    TResult Function(_GetAllVendors value)? getAllVendors,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(this);
    }
    return orElse();
  }
}

abstract class _Intialised implements UserEvent {
  const factory _Intialised() = _$IntialisedImpl;
}

/// @nodoc
abstract class _$$FetchUserByUserIDImplCopyWith<$Res> {
  factory _$$FetchUserByUserIDImplCopyWith(_$FetchUserByUserIDImpl value,
          $Res Function(_$FetchUserByUserIDImpl) then) =
      __$$FetchUserByUserIDImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID});
}

/// @nodoc
class __$$FetchUserByUserIDImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$FetchUserByUserIDImpl>
    implements _$$FetchUserByUserIDImplCopyWith<$Res> {
  __$$FetchUserByUserIDImplCopyWithImpl(_$FetchUserByUserIDImpl _value,
      $Res Function(_$FetchUserByUserIDImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
  }) {
    return _then(_$FetchUserByUserIDImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchUserByUserIDImpl implements _FetchUserByUserID {
  const _$FetchUserByUserIDImpl({required this.userID});

  @override
  final String userID;

  @override
  String toString() {
    return 'UserEvent.fetchUserByUserID(userID: $userID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserByUserIDImpl &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserByUserIDImplCopyWith<_$FetchUserByUserIDImpl> get copyWith =>
      __$$FetchUserByUserIDImplCopyWithImpl<_$FetchUserByUserIDImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialised,
    required TResult Function(String userID) fetchUserByUserID,
    required TResult Function(User user) addUser,
    required TResult Function() readMessages,
    required TResult Function() getAllVendors,
  }) {
    return fetchUserByUserID(userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialised,
    TResult? Function(String userID)? fetchUserByUserID,
    TResult? Function(User user)? addUser,
    TResult? Function()? readMessages,
    TResult? Function()? getAllVendors,
  }) {
    return fetchUserByUserID?.call(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialised,
    TResult Function(String userID)? fetchUserByUserID,
    TResult Function(User user)? addUser,
    TResult Function()? readMessages,
    TResult Function()? getAllVendors,
    required TResult orElse(),
  }) {
    if (fetchUserByUserID != null) {
      return fetchUserByUserID(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) initialised,
    required TResult Function(_FetchUserByUserID value) fetchUserByUserID,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_UnreadMessages value) readMessages,
    required TResult Function(_GetAllVendors value) getAllVendors,
  }) {
    return fetchUserByUserID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialised value)? initialised,
    TResult? Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_UnreadMessages value)? readMessages,
    TResult? Function(_GetAllVendors value)? getAllVendors,
  }) {
    return fetchUserByUserID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? initialised,
    TResult Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_UnreadMessages value)? readMessages,
    TResult Function(_GetAllVendors value)? getAllVendors,
    required TResult orElse(),
  }) {
    if (fetchUserByUserID != null) {
      return fetchUserByUserID(this);
    }
    return orElse();
  }
}

abstract class _FetchUserByUserID implements UserEvent {
  const factory _FetchUserByUserID({required final String userID}) =
      _$FetchUserByUserIDImpl;

  String get userID;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchUserByUserIDImplCopyWith<_$FetchUserByUserIDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddUserImplCopyWith<$Res> {
  factory _$$AddUserImplCopyWith(
          _$AddUserImpl value, $Res Function(_$AddUserImpl) then) =
      __$$AddUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AddUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AddUserImpl>
    implements _$$AddUserImplCopyWith<$Res> {
  __$$AddUserImplCopyWithImpl(
      _$AddUserImpl _value, $Res Function(_$AddUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AddUserImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AddUserImpl implements _AddUser {
  const _$AddUserImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.addUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      __$$AddUserImplCopyWithImpl<_$AddUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialised,
    required TResult Function(String userID) fetchUserByUserID,
    required TResult Function(User user) addUser,
    required TResult Function() readMessages,
    required TResult Function() getAllVendors,
  }) {
    return addUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialised,
    TResult? Function(String userID)? fetchUserByUserID,
    TResult? Function(User user)? addUser,
    TResult? Function()? readMessages,
    TResult? Function()? getAllVendors,
  }) {
    return addUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialised,
    TResult Function(String userID)? fetchUserByUserID,
    TResult Function(User user)? addUser,
    TResult Function()? readMessages,
    TResult Function()? getAllVendors,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) initialised,
    required TResult Function(_FetchUserByUserID value) fetchUserByUserID,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_UnreadMessages value) readMessages,
    required TResult Function(_GetAllVendors value) getAllVendors,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialised value)? initialised,
    TResult? Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_UnreadMessages value)? readMessages,
    TResult? Function(_GetAllVendors value)? getAllVendors,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? initialised,
    TResult Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_UnreadMessages value)? readMessages,
    TResult Function(_GetAllVendors value)? getAllVendors,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class _AddUser implements UserEvent {
  const factory _AddUser({required final User user}) = _$AddUserImpl;

  User get user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnreadMessagesImplCopyWith<$Res> {
  factory _$$UnreadMessagesImplCopyWith(_$UnreadMessagesImpl value,
          $Res Function(_$UnreadMessagesImpl) then) =
      __$$UnreadMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnreadMessagesImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UnreadMessagesImpl>
    implements _$$UnreadMessagesImplCopyWith<$Res> {
  __$$UnreadMessagesImplCopyWithImpl(
      _$UnreadMessagesImpl _value, $Res Function(_$UnreadMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnreadMessagesImpl implements _UnreadMessages {
  const _$UnreadMessagesImpl();

  @override
  String toString() {
    return 'UserEvent.readMessages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnreadMessagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialised,
    required TResult Function(String userID) fetchUserByUserID,
    required TResult Function(User user) addUser,
    required TResult Function() readMessages,
    required TResult Function() getAllVendors,
  }) {
    return readMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialised,
    TResult? Function(String userID)? fetchUserByUserID,
    TResult? Function(User user)? addUser,
    TResult? Function()? readMessages,
    TResult? Function()? getAllVendors,
  }) {
    return readMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialised,
    TResult Function(String userID)? fetchUserByUserID,
    TResult Function(User user)? addUser,
    TResult Function()? readMessages,
    TResult Function()? getAllVendors,
    required TResult orElse(),
  }) {
    if (readMessages != null) {
      return readMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) initialised,
    required TResult Function(_FetchUserByUserID value) fetchUserByUserID,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_UnreadMessages value) readMessages,
    required TResult Function(_GetAllVendors value) getAllVendors,
  }) {
    return readMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialised value)? initialised,
    TResult? Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_UnreadMessages value)? readMessages,
    TResult? Function(_GetAllVendors value)? getAllVendors,
  }) {
    return readMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? initialised,
    TResult Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_UnreadMessages value)? readMessages,
    TResult Function(_GetAllVendors value)? getAllVendors,
    required TResult orElse(),
  }) {
    if (readMessages != null) {
      return readMessages(this);
    }
    return orElse();
  }
}

abstract class _UnreadMessages implements UserEvent {
  const factory _UnreadMessages() = _$UnreadMessagesImpl;
}

/// @nodoc
abstract class _$$GetAllVendorsImplCopyWith<$Res> {
  factory _$$GetAllVendorsImplCopyWith(
          _$GetAllVendorsImpl value, $Res Function(_$GetAllVendorsImpl) then) =
      __$$GetAllVendorsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllVendorsImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetAllVendorsImpl>
    implements _$$GetAllVendorsImplCopyWith<$Res> {
  __$$GetAllVendorsImplCopyWithImpl(
      _$GetAllVendorsImpl _value, $Res Function(_$GetAllVendorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllVendorsImpl implements _GetAllVendors {
  const _$GetAllVendorsImpl();

  @override
  String toString() {
    return 'UserEvent.getAllVendors()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllVendorsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialised,
    required TResult Function(String userID) fetchUserByUserID,
    required TResult Function(User user) addUser,
    required TResult Function() readMessages,
    required TResult Function() getAllVendors,
  }) {
    return getAllVendors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialised,
    TResult? Function(String userID)? fetchUserByUserID,
    TResult? Function(User user)? addUser,
    TResult? Function()? readMessages,
    TResult? Function()? getAllVendors,
  }) {
    return getAllVendors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialised,
    TResult Function(String userID)? fetchUserByUserID,
    TResult Function(User user)? addUser,
    TResult Function()? readMessages,
    TResult Function()? getAllVendors,
    required TResult orElse(),
  }) {
    if (getAllVendors != null) {
      return getAllVendors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) initialised,
    required TResult Function(_FetchUserByUserID value) fetchUserByUserID,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_UnreadMessages value) readMessages,
    required TResult Function(_GetAllVendors value) getAllVendors,
  }) {
    return getAllVendors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialised value)? initialised,
    TResult? Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_UnreadMessages value)? readMessages,
    TResult? Function(_GetAllVendors value)? getAllVendors,
  }) {
    return getAllVendors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? initialised,
    TResult Function(_FetchUserByUserID value)? fetchUserByUserID,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_UnreadMessages value)? readMessages,
    TResult Function(_GetAllVendors value)? getAllVendors,
    required TResult orElse(),
  }) {
    if (getAllVendors != null) {
      return getAllVendors(this);
    }
    return orElse();
  }
}

abstract class _GetAllVendors implements UserEvent {
  const factory _GetAllVendors() = _$GetAllVendorsImpl;
}

/// @nodoc
mixin _$UserState {
  Option<Either<ApiFailure, dynamic>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  List<Item> get itemList => throw _privateConstructorUsedError;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {Option<Either<ApiFailure, dynamic>> failureOrSuccessOption,
      bool isLoading,
      User user,
      List<User> users,
      List<Item> itemList});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSuccessOption = null,
    Object? isLoading = null,
    Object? user = null,
    Object? users = null,
    Object? itemList = null,
  }) {
    return _then(_value.copyWith(
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      itemList: null == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<ApiFailure, dynamic>> failureOrSuccessOption,
      bool isLoading,
      User user,
      List<User> users,
      List<Item> itemList});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSuccessOption = null,
    Object? isLoading = null,
    Object? user = null,
    Object? users = null,
    Object? itemList = null,
  }) {
    return _then(_$UserStateImpl(
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      itemList: null == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$UserStateImpl extends _UserState {
  const _$UserStateImpl(
      {required this.failureOrSuccessOption,
      required this.isLoading,
      required this.user,
      required final List<User> users,
      required final List<Item> itemList})
      : _users = users,
        _itemList = itemList,
        super._();

  @override
  final Option<Either<ApiFailure, dynamic>> failureOrSuccessOption;
  @override
  final bool isLoading;
  @override
  final User user;
  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<Item> _itemList;
  @override
  List<Item> get itemList {
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  String toString() {
    return 'UserState(failureOrSuccessOption: $failureOrSuccessOption, isLoading: $isLoading, user: $user, users: $users, itemList: $itemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failureOrSuccessOption,
      isLoading,
      user,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_itemList));

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState extends UserState {
  const factory _UserState(
      {required final Option<Either<ApiFailure, dynamic>>
          failureOrSuccessOption,
      required final bool isLoading,
      required final User user,
      required final List<User> users,
      required final List<Item> itemList}) = _$UserStateImpl;
  const _UserState._() : super._();

  @override
  Option<Either<ApiFailure, dynamic>> get failureOrSuccessOption;
  @override
  bool get isLoading;
  @override
  User get user;
  @override
  List<User> get users;
  @override
  List<Item> get itemList;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
