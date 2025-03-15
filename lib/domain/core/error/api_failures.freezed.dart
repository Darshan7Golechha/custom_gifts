// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() photoPermissionFailed,
    required TResult Function() storagePermissionFailed,
    required TResult Function() noRecordFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? photoPermissionFailed,
    TResult? Function()? storagePermissionFailed,
    TResult? Function()? noRecordFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? photoPermissionFailed,
    TResult Function()? storagePermissionFailed,
    TResult Function()? noRecordFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_PhotoPermissionFailed value)
        photoPermissionFailed,
    required TResult Function(_StoragePermissionFailed value)
        storagePermissionFailed,
    required TResult Function(_NoRecordFound value) noRecordFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult? Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult? Function(_NoRecordFound value)? noRecordFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult Function(_NoRecordFound value)? noRecordFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res, ApiFailure>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res, $Val extends ApiFailure>
    implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OtherImplCopyWith<$Res> {
  factory _$$OtherImplCopyWith(
          _$OtherImpl value, $Res Function(_$OtherImpl) then) =
      __$$OtherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtherImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$OtherImpl>
    implements _$$OtherImplCopyWith<$Res> {
  __$$OtherImplCopyWithImpl(
      _$OtherImpl _value, $Res Function(_$OtherImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OtherImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtherImpl implements _Other {
  const _$OtherImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiFailure.other(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      __$$OtherImplCopyWithImpl<_$OtherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() photoPermissionFailed,
    required TResult Function() storagePermissionFailed,
    required TResult Function() noRecordFound,
  }) {
    return other(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? photoPermissionFailed,
    TResult? Function()? storagePermissionFailed,
    TResult? Function()? noRecordFound,
  }) {
    return other?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? photoPermissionFailed,
    TResult Function()? storagePermissionFailed,
    TResult Function()? noRecordFound,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_PhotoPermissionFailed value)
        photoPermissionFailed,
    required TResult Function(_StoragePermissionFailed value)
        storagePermissionFailed,
    required TResult Function(_NoRecordFound value) noRecordFound,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult? Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult? Function(_NoRecordFound value)? noRecordFound,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult Function(_NoRecordFound value)? noRecordFound,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class _Other implements ApiFailure {
  const factory _Other(final String message) = _$OtherImpl;

  String get message;

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() photoPermissionFailed,
    required TResult Function() storagePermissionFailed,
    required TResult Function() noRecordFound,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? photoPermissionFailed,
    TResult? Function()? storagePermissionFailed,
    TResult? Function()? noRecordFound,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? photoPermissionFailed,
    TResult Function()? storagePermissionFailed,
    TResult Function()? noRecordFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_PhotoPermissionFailed value)
        photoPermissionFailed,
    required TResult Function(_StoragePermissionFailed value)
        storagePermissionFailed,
    required TResult Function(_NoRecordFound value) noRecordFound,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult? Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult? Function(_NoRecordFound value)? noRecordFound,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult Function(_NoRecordFound value)? noRecordFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ApiFailure {
  const factory _ServerError(final String message) = _$ServerErrorImpl;

  String get message;

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PoorConnectionImplCopyWith<$Res> {
  factory _$$PoorConnectionImplCopyWith(_$PoorConnectionImpl value,
          $Res Function(_$PoorConnectionImpl) then) =
      __$$PoorConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PoorConnectionImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$PoorConnectionImpl>
    implements _$$PoorConnectionImplCopyWith<$Res> {
  __$$PoorConnectionImplCopyWithImpl(
      _$PoorConnectionImpl _value, $Res Function(_$PoorConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PoorConnectionImpl implements _PoorConnection {
  const _$PoorConnectionImpl();

  @override
  String toString() {
    return 'ApiFailure.poorConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PoorConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() photoPermissionFailed,
    required TResult Function() storagePermissionFailed,
    required TResult Function() noRecordFound,
  }) {
    return poorConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? photoPermissionFailed,
    TResult? Function()? storagePermissionFailed,
    TResult? Function()? noRecordFound,
  }) {
    return poorConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? photoPermissionFailed,
    TResult Function()? storagePermissionFailed,
    TResult Function()? noRecordFound,
    required TResult orElse(),
  }) {
    if (poorConnection != null) {
      return poorConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_PhotoPermissionFailed value)
        photoPermissionFailed,
    required TResult Function(_StoragePermissionFailed value)
        storagePermissionFailed,
    required TResult Function(_NoRecordFound value) noRecordFound,
  }) {
    return poorConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult? Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult? Function(_NoRecordFound value)? noRecordFound,
  }) {
    return poorConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult Function(_NoRecordFound value)? noRecordFound,
    required TResult orElse(),
  }) {
    if (poorConnection != null) {
      return poorConnection(this);
    }
    return orElse();
  }
}

abstract class _PoorConnection implements ApiFailure {
  const factory _PoorConnection() = _$PoorConnectionImpl;
}

/// @nodoc
abstract class _$$ServerTimeoutImplCopyWith<$Res> {
  factory _$$ServerTimeoutImplCopyWith(
          _$ServerTimeoutImpl value, $Res Function(_$ServerTimeoutImpl) then) =
      __$$ServerTimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerTimeoutImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ServerTimeoutImpl>
    implements _$$ServerTimeoutImplCopyWith<$Res> {
  __$$ServerTimeoutImplCopyWithImpl(
      _$ServerTimeoutImpl _value, $Res Function(_$ServerTimeoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerTimeoutImpl implements _ServerTimeout {
  const _$ServerTimeoutImpl();

  @override
  String toString() {
    return 'ApiFailure.serverTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerTimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() photoPermissionFailed,
    required TResult Function() storagePermissionFailed,
    required TResult Function() noRecordFound,
  }) {
    return serverTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? photoPermissionFailed,
    TResult? Function()? storagePermissionFailed,
    TResult? Function()? noRecordFound,
  }) {
    return serverTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? photoPermissionFailed,
    TResult Function()? storagePermissionFailed,
    TResult Function()? noRecordFound,
    required TResult orElse(),
  }) {
    if (serverTimeout != null) {
      return serverTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_PhotoPermissionFailed value)
        photoPermissionFailed,
    required TResult Function(_StoragePermissionFailed value)
        storagePermissionFailed,
    required TResult Function(_NoRecordFound value) noRecordFound,
  }) {
    return serverTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult? Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult? Function(_NoRecordFound value)? noRecordFound,
  }) {
    return serverTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult Function(_NoRecordFound value)? noRecordFound,
    required TResult orElse(),
  }) {
    if (serverTimeout != null) {
      return serverTimeout(this);
    }
    return orElse();
  }
}

abstract class _ServerTimeout implements ApiFailure {
  const factory _ServerTimeout() = _$ServerTimeoutImpl;
}

/// @nodoc
abstract class _$$PhotoPermissionFailedImplCopyWith<$Res> {
  factory _$$PhotoPermissionFailedImplCopyWith(
          _$PhotoPermissionFailedImpl value,
          $Res Function(_$PhotoPermissionFailedImpl) then) =
      __$$PhotoPermissionFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhotoPermissionFailedImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$PhotoPermissionFailedImpl>
    implements _$$PhotoPermissionFailedImplCopyWith<$Res> {
  __$$PhotoPermissionFailedImplCopyWithImpl(_$PhotoPermissionFailedImpl _value,
      $Res Function(_$PhotoPermissionFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PhotoPermissionFailedImpl implements _PhotoPermissionFailed {
  const _$PhotoPermissionFailedImpl();

  @override
  String toString() {
    return 'ApiFailure.photoPermissionFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoPermissionFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() photoPermissionFailed,
    required TResult Function() storagePermissionFailed,
    required TResult Function() noRecordFound,
  }) {
    return photoPermissionFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? photoPermissionFailed,
    TResult? Function()? storagePermissionFailed,
    TResult? Function()? noRecordFound,
  }) {
    return photoPermissionFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? photoPermissionFailed,
    TResult Function()? storagePermissionFailed,
    TResult Function()? noRecordFound,
    required TResult orElse(),
  }) {
    if (photoPermissionFailed != null) {
      return photoPermissionFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_PhotoPermissionFailed value)
        photoPermissionFailed,
    required TResult Function(_StoragePermissionFailed value)
        storagePermissionFailed,
    required TResult Function(_NoRecordFound value) noRecordFound,
  }) {
    return photoPermissionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult? Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult? Function(_NoRecordFound value)? noRecordFound,
  }) {
    return photoPermissionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult Function(_NoRecordFound value)? noRecordFound,
    required TResult orElse(),
  }) {
    if (photoPermissionFailed != null) {
      return photoPermissionFailed(this);
    }
    return orElse();
  }
}

abstract class _PhotoPermissionFailed implements ApiFailure {
  const factory _PhotoPermissionFailed() = _$PhotoPermissionFailedImpl;
}

/// @nodoc
abstract class _$$StoragePermissionFailedImplCopyWith<$Res> {
  factory _$$StoragePermissionFailedImplCopyWith(
          _$StoragePermissionFailedImpl value,
          $Res Function(_$StoragePermissionFailedImpl) then) =
      __$$StoragePermissionFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoragePermissionFailedImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$StoragePermissionFailedImpl>
    implements _$$StoragePermissionFailedImplCopyWith<$Res> {
  __$$StoragePermissionFailedImplCopyWithImpl(
      _$StoragePermissionFailedImpl _value,
      $Res Function(_$StoragePermissionFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StoragePermissionFailedImpl implements _StoragePermissionFailed {
  const _$StoragePermissionFailedImpl();

  @override
  String toString() {
    return 'ApiFailure.storagePermissionFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoragePermissionFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() photoPermissionFailed,
    required TResult Function() storagePermissionFailed,
    required TResult Function() noRecordFound,
  }) {
    return storagePermissionFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? photoPermissionFailed,
    TResult? Function()? storagePermissionFailed,
    TResult? Function()? noRecordFound,
  }) {
    return storagePermissionFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? photoPermissionFailed,
    TResult Function()? storagePermissionFailed,
    TResult Function()? noRecordFound,
    required TResult orElse(),
  }) {
    if (storagePermissionFailed != null) {
      return storagePermissionFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_PhotoPermissionFailed value)
        photoPermissionFailed,
    required TResult Function(_StoragePermissionFailed value)
        storagePermissionFailed,
    required TResult Function(_NoRecordFound value) noRecordFound,
  }) {
    return storagePermissionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult? Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult? Function(_NoRecordFound value)? noRecordFound,
  }) {
    return storagePermissionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult Function(_NoRecordFound value)? noRecordFound,
    required TResult orElse(),
  }) {
    if (storagePermissionFailed != null) {
      return storagePermissionFailed(this);
    }
    return orElse();
  }
}

abstract class _StoragePermissionFailed implements ApiFailure {
  const factory _StoragePermissionFailed() = _$StoragePermissionFailedImpl;
}

/// @nodoc
abstract class _$$NoRecordFoundImplCopyWith<$Res> {
  factory _$$NoRecordFoundImplCopyWith(
          _$NoRecordFoundImpl value, $Res Function(_$NoRecordFoundImpl) then) =
      __$$NoRecordFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoRecordFoundImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$NoRecordFoundImpl>
    implements _$$NoRecordFoundImplCopyWith<$Res> {
  __$$NoRecordFoundImplCopyWithImpl(
      _$NoRecordFoundImpl _value, $Res Function(_$NoRecordFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoRecordFoundImpl implements _NoRecordFound {
  const _$NoRecordFoundImpl();

  @override
  String toString() {
    return 'ApiFailure.noRecordFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoRecordFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() photoPermissionFailed,
    required TResult Function() storagePermissionFailed,
    required TResult Function() noRecordFound,
  }) {
    return noRecordFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? photoPermissionFailed,
    TResult? Function()? storagePermissionFailed,
    TResult? Function()? noRecordFound,
  }) {
    return noRecordFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? photoPermissionFailed,
    TResult Function()? storagePermissionFailed,
    TResult Function()? noRecordFound,
    required TResult orElse(),
  }) {
    if (noRecordFound != null) {
      return noRecordFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_PhotoPermissionFailed value)
        photoPermissionFailed,
    required TResult Function(_StoragePermissionFailed value)
        storagePermissionFailed,
    required TResult Function(_NoRecordFound value) noRecordFound,
  }) {
    return noRecordFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult? Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult? Function(_NoRecordFound value)? noRecordFound,
  }) {
    return noRecordFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_PhotoPermissionFailed value)? photoPermissionFailed,
    TResult Function(_StoragePermissionFailed value)? storagePermissionFailed,
    TResult Function(_NoRecordFound value)? noRecordFound,
    required TResult orElse(),
  }) {
    if (noRecordFound != null) {
      return noRecordFound(this);
    }
    return orElse();
  }
}

abstract class _NoRecordFound implements ApiFailure {
  const factory _NoRecordFound() = _$NoRecordFoundImpl;
}
