// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(User user) authenticate,
    required TResult Function() unAuthenticate,
    required TResult Function() refreshUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(User user)? authenticate,
    TResult? Function()? unAuthenticate,
    TResult? Function()? refreshUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(User user)? authenticate,
    TResult Function()? unAuthenticate,
    TResult Function()? refreshUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticate value) unAuthenticate,
    required TResult Function(_RefreshUser value) refreshUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticate value)? unAuthenticate,
    TResult? Function(_RefreshUser value)? refreshUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticate value)? unAuthenticate,
    TResult Function(_RefreshUser value)? refreshUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'AuthEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(User user) authenticate,
    required TResult Function() unAuthenticate,
    required TResult Function() refreshUser,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(User user)? authenticate,
    TResult? Function()? unAuthenticate,
    TResult? Function()? refreshUser,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(User user)? authenticate,
    TResult Function()? unAuthenticate,
    TResult Function()? refreshUser,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticate value) unAuthenticate,
    required TResult Function(_RefreshUser value) refreshUser,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticate value)? unAuthenticate,
    TResult? Function(_RefreshUser value)? refreshUser,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticate value)? unAuthenticate,
    TResult Function(_RefreshUser value)? refreshUser,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AuthEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$AuthenticateImplCopyWith<$Res> {
  factory _$$AuthenticateImplCopyWith(
          _$AuthenticateImpl value, $Res Function(_$AuthenticateImpl) then) =
      __$$AuthenticateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthenticateImpl>
    implements _$$AuthenticateImplCopyWith<$Res> {
  __$$AuthenticateImplCopyWithImpl(
      _$AuthenticateImpl _value, $Res Function(_$AuthenticateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of AuthEvent
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

class _$AuthenticateImpl implements _Authenticate {
  const _$AuthenticateImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.authenticate(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateImplCopyWith<_$AuthenticateImpl> get copyWith =>
      __$$AuthenticateImplCopyWithImpl<_$AuthenticateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(User user) authenticate,
    required TResult Function() unAuthenticate,
    required TResult Function() refreshUser,
  }) {
    return authenticate(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(User user)? authenticate,
    TResult? Function()? unAuthenticate,
    TResult? Function()? refreshUser,
  }) {
    return authenticate?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(User user)? authenticate,
    TResult Function()? unAuthenticate,
    TResult Function()? refreshUser,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticate value) unAuthenticate,
    required TResult Function(_RefreshUser value) refreshUser,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticate value)? unAuthenticate,
    TResult? Function(_RefreshUser value)? refreshUser,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticate value)? unAuthenticate,
    TResult Function(_RefreshUser value)? refreshUser,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements AuthEvent {
  const factory _Authenticate({required final User user}) = _$AuthenticateImpl;

  User get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticateImplCopyWith<_$AuthenticateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthenticateImplCopyWith<$Res> {
  factory _$$UnAuthenticateImplCopyWith(_$UnAuthenticateImpl value,
          $Res Function(_$UnAuthenticateImpl) then) =
      __$$UnAuthenticateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UnAuthenticateImpl>
    implements _$$UnAuthenticateImplCopyWith<$Res> {
  __$$UnAuthenticateImplCopyWithImpl(
      _$UnAuthenticateImpl _value, $Res Function(_$UnAuthenticateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuthenticateImpl implements _UnAuthenticate {
  const _$UnAuthenticateImpl();

  @override
  String toString() {
    return 'AuthEvent.unAuthenticate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(User user) authenticate,
    required TResult Function() unAuthenticate,
    required TResult Function() refreshUser,
  }) {
    return unAuthenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(User user)? authenticate,
    TResult? Function()? unAuthenticate,
    TResult? Function()? refreshUser,
  }) {
    return unAuthenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(User user)? authenticate,
    TResult Function()? unAuthenticate,
    TResult Function()? refreshUser,
    required TResult orElse(),
  }) {
    if (unAuthenticate != null) {
      return unAuthenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticate value) unAuthenticate,
    required TResult Function(_RefreshUser value) refreshUser,
  }) {
    return unAuthenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticate value)? unAuthenticate,
    TResult? Function(_RefreshUser value)? refreshUser,
  }) {
    return unAuthenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticate value)? unAuthenticate,
    TResult Function(_RefreshUser value)? refreshUser,
    required TResult orElse(),
  }) {
    if (unAuthenticate != null) {
      return unAuthenticate(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticate implements AuthEvent {
  const factory _UnAuthenticate() = _$UnAuthenticateImpl;
}

/// @nodoc
abstract class _$$RefreshUserImplCopyWith<$Res> {
  factory _$$RefreshUserImplCopyWith(
          _$RefreshUserImpl value, $Res Function(_$RefreshUserImpl) then) =
      __$$RefreshUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RefreshUserImpl>
    implements _$$RefreshUserImplCopyWith<$Res> {
  __$$RefreshUserImplCopyWithImpl(
      _$RefreshUserImpl _value, $Res Function(_$RefreshUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshUserImpl implements _RefreshUser {
  const _$RefreshUserImpl();

  @override
  String toString() {
    return 'AuthEvent.refreshUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(User user) authenticate,
    required TResult Function() unAuthenticate,
    required TResult Function() refreshUser,
  }) {
    return refreshUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(User user)? authenticate,
    TResult? Function()? unAuthenticate,
    TResult? Function()? refreshUser,
  }) {
    return refreshUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(User user)? authenticate,
    TResult Function()? unAuthenticate,
    TResult Function()? refreshUser,
    required TResult orElse(),
  }) {
    if (refreshUser != null) {
      return refreshUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticate value) unAuthenticate,
    required TResult Function(_RefreshUser value) refreshUser,
  }) {
    return refreshUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticate value)? unAuthenticate,
    TResult? Function(_RefreshUser value)? refreshUser,
  }) {
    return refreshUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticate value)? unAuthenticate,
    TResult Function(_RefreshUser value)? refreshUser,
    required TResult orElse(),
  }) {
    if (refreshUser != null) {
      return refreshUser(this);
    }
    return orElse();
  }
}

abstract class _RefreshUser implements AuthEvent {
  const factory _RefreshUser() = _$RefreshUserImpl;
}

/// @nodoc
mixin _$AuthState {
  User get currentUser => throw _privateConstructorUsedError;
  List<User> get blockedUsersList => throw _privateConstructorUsedError;
  List<User> get myBlockerUsersList =>
      throw _privateConstructorUsedError; // These are users who have blocked me
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get logoutFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {User currentUser,
      List<User> blockedUsersList,
      List<User> myBlockerUsersList,
      bool isLoading,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      Option<Either<ApiFailure, dynamic>> logoutFailureOrSuccessOption});

  $UserCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = null,
    Object? blockedUsersList = null,
    Object? myBlockerUsersList = null,
    Object? isLoading = null,
    Object? apiFailureOrSuccessOption = null,
    Object? logoutFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User,
      blockedUsersList: null == blockedUsersList
          ? _value.blockedUsersList
          : blockedUsersList // ignore: cast_nullable_to_non_nullable
              as List<User>,
      myBlockerUsersList: null == myBlockerUsersList
          ? _value.myBlockerUsersList
          : myBlockerUsersList // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      logoutFailureOrSuccessOption: null == logoutFailureOrSuccessOption
          ? _value.logoutFailureOrSuccessOption
          : logoutFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get currentUser {
    return $UserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User currentUser,
      List<User> blockedUsersList,
      List<User> myBlockerUsersList,
      bool isLoading,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      Option<Either<ApiFailure, dynamic>> logoutFailureOrSuccessOption});

  @override
  $UserCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = null,
    Object? blockedUsersList = null,
    Object? myBlockerUsersList = null,
    Object? isLoading = null,
    Object? apiFailureOrSuccessOption = null,
    Object? logoutFailureOrSuccessOption = null,
  }) {
    return _then(_$AuthStateImpl(
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User,
      blockedUsersList: null == blockedUsersList
          ? _value._blockedUsersList
          : blockedUsersList // ignore: cast_nullable_to_non_nullable
              as List<User>,
      myBlockerUsersList: null == myBlockerUsersList
          ? _value._myBlockerUsersList
          : myBlockerUsersList // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      logoutFailureOrSuccessOption: null == logoutFailureOrSuccessOption
          ? _value.logoutFailureOrSuccessOption
          : logoutFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl extends _AuthState {
  const _$AuthStateImpl(
      {required this.currentUser,
      required final List<User> blockedUsersList,
      required final List<User> myBlockerUsersList,
      required this.isLoading,
      required this.apiFailureOrSuccessOption,
      required this.logoutFailureOrSuccessOption})
      : _blockedUsersList = blockedUsersList,
        _myBlockerUsersList = myBlockerUsersList,
        super._();

  @override
  final User currentUser;
  final List<User> _blockedUsersList;
  @override
  List<User> get blockedUsersList {
    if (_blockedUsersList is EqualUnmodifiableListView)
      return _blockedUsersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedUsersList);
  }

  final List<User> _myBlockerUsersList;
  @override
  List<User> get myBlockerUsersList {
    if (_myBlockerUsersList is EqualUnmodifiableListView)
      return _myBlockerUsersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myBlockerUsersList);
  }

// These are users who have blocked me
  @override
  final bool isLoading;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final Option<Either<ApiFailure, dynamic>> logoutFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthState(currentUser: $currentUser, blockedUsersList: $blockedUsersList, myBlockerUsersList: $myBlockerUsersList, isLoading: $isLoading, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, logoutFailureOrSuccessOption: $logoutFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            const DeepCollectionEquality()
                .equals(other._blockedUsersList, _blockedUsersList) &&
            const DeepCollectionEquality()
                .equals(other._myBlockerUsersList, _myBlockerUsersList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.logoutFailureOrSuccessOption,
                    logoutFailureOrSuccessOption) ||
                other.logoutFailureOrSuccessOption ==
                    logoutFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentUser,
      const DeepCollectionEquality().hash(_blockedUsersList),
      const DeepCollectionEquality().hash(_myBlockerUsersList),
      isLoading,
      apiFailureOrSuccessOption,
      logoutFailureOrSuccessOption);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required final User currentUser,
      required final List<User> blockedUsersList,
      required final List<User> myBlockerUsersList,
      required final bool isLoading,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final Option<Either<ApiFailure, dynamic>>
          logoutFailureOrSuccessOption}) = _$AuthStateImpl;
  const _AuthState._() : super._();

  @override
  User get currentUser;
  @override
  List<User> get blockedUsersList;
  @override
  List<User> get myBlockerUsersList; // These are users who have blocked me
  @override
  bool get isLoading;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  Option<Either<ApiFailure, dynamic>> get logoutFailureOrSuccessOption;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
