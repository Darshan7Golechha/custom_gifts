// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) succeedLength,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) mustMatchNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? succeedLength,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? mustMatchNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? succeedLength,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? mustMatchNewPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SucceedLength<T> value) succeedLength,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(MatchNewPassword<T> value) mustMatchNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(SucceedLength<T> value)? succeedLength,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(MatchNewPassword<T> value)? mustMatchNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SucceedLength<T> value)? succeedLength,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(MatchNewPassword<T> value)? mustMatchNewPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) succeedLength,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) mustMatchNewPassword,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? succeedLength,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? mustMatchNewPassword,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? succeedLength,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? mustMatchNewPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SucceedLength<T> value) succeedLength,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(MatchNewPassword<T> value) mustMatchNewPassword,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(SucceedLength<T> value)? succeedLength,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(MatchNewPassword<T> value)? mustMatchNewPassword,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SucceedLength<T> value)? succeedLength,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(MatchNewPassword<T> value)? mustMatchNewPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$EmptyImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExceedingLengthImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthImplCopyWith(_$ExceedingLengthImpl<T> value,
          $Res Function(_$ExceedingLengthImpl<T>) then) =
      __$$ExceedingLengthImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ExceedingLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedingLengthImpl<T>>
    implements _$$ExceedingLengthImplCopyWith<T, $Res> {
  __$$ExceedingLengthImplCopyWithImpl(_$ExceedingLengthImpl<T> _value,
      $Res Function(_$ExceedingLengthImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ExceedingLengthImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLengthImpl<T> implements ExceedingLength<T> {
  const _$ExceedingLengthImpl({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      __$$ExceedingLengthImplCopyWithImpl<T, _$ExceedingLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) succeedLength,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) mustMatchNewPassword,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? succeedLength,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? mustMatchNewPassword,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? succeedLength,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? mustMatchNewPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SucceedLength<T> value) succeedLength,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(MatchNewPassword<T> value) mustMatchNewPassword,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(SucceedLength<T> value)? succeedLength,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(MatchNewPassword<T> value)? mustMatchNewPassword,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SucceedLength<T> value)? succeedLength,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(MatchNewPassword<T> value)? mustMatchNewPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required final T failedValue,
      required final int max}) = _$ExceedingLengthImpl<T>;

  @override
  T get failedValue;
  int get max;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SucceedLengthImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$SucceedLengthImplCopyWith(_$SucceedLengthImpl<T> value,
          $Res Function(_$SucceedLengthImpl<T>) then) =
      __$$SucceedLengthImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int min});
}

/// @nodoc
class __$$SucceedLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$SucceedLengthImpl<T>>
    implements _$$SucceedLengthImplCopyWith<T, $Res> {
  __$$SucceedLengthImplCopyWithImpl(_$SucceedLengthImpl<T> _value,
      $Res Function(_$SucceedLengthImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = null,
  }) {
    return _then(_$SucceedLengthImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SucceedLengthImpl<T> implements SucceedLength<T> {
  const _$SucceedLengthImpl({required this.failedValue, required this.min});

  @override
  final T failedValue;
  @override
  final int min;

  @override
  String toString() {
    return 'ValueFailure<$T>.succeedLength(failedValue: $failedValue, min: $min)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucceedLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.min, min) || other.min == min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), min);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceedLengthImplCopyWith<T, _$SucceedLengthImpl<T>> get copyWith =>
      __$$SucceedLengthImplCopyWithImpl<T, _$SucceedLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) succeedLength,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) mustMatchNewPassword,
  }) {
    return succeedLength(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? succeedLength,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? mustMatchNewPassword,
  }) {
    return succeedLength?.call(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? succeedLength,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? mustMatchNewPassword,
    required TResult orElse(),
  }) {
    if (succeedLength != null) {
      return succeedLength(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SucceedLength<T> value) succeedLength,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(MatchNewPassword<T> value) mustMatchNewPassword,
  }) {
    return succeedLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(SucceedLength<T> value)? succeedLength,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(MatchNewPassword<T> value)? mustMatchNewPassword,
  }) {
    return succeedLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SucceedLength<T> value)? succeedLength,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(MatchNewPassword<T> value)? mustMatchNewPassword,
    required TResult orElse(),
  }) {
    if (succeedLength != null) {
      return succeedLength(this);
    }
    return orElse();
  }
}

abstract class SucceedLength<T> implements ValueFailure<T> {
  const factory SucceedLength(
      {required final T failedValue,
      required final int min}) = _$SucceedLengthImpl<T>;

  @override
  T get failedValue;
  int get min;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SucceedLengthImplCopyWith<T, _$SucceedLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) succeedLength,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) mustMatchNewPassword,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? succeedLength,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? mustMatchNewPassword,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? succeedLength,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? mustMatchNewPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SucceedLength<T> value) succeedLength,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(MatchNewPassword<T> value) mustMatchNewPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(SucceedLength<T> value)? succeedLength,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(MatchNewPassword<T> value)? mustMatchNewPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SucceedLength<T> value)? succeedLength,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(MatchNewPassword<T> value)? mustMatchNewPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmailImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MatchNewPasswordImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MatchNewPasswordImplCopyWith(_$MatchNewPasswordImpl<T> value,
          $Res Function(_$MatchNewPasswordImpl<T>) then) =
      __$$MatchNewPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$MatchNewPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$MatchNewPasswordImpl<T>>
    implements _$$MatchNewPasswordImplCopyWith<T, $Res> {
  __$$MatchNewPasswordImplCopyWithImpl(_$MatchNewPasswordImpl<T> _value,
      $Res Function(_$MatchNewPasswordImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$MatchNewPasswordImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MatchNewPasswordImpl<T> implements MatchNewPassword<T> {
  const _$MatchNewPasswordImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.mustMatchNewPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchNewPasswordImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchNewPasswordImplCopyWith<T, _$MatchNewPasswordImpl<T>> get copyWith =>
      __$$MatchNewPasswordImplCopyWithImpl<T, _$MatchNewPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) succeedLength,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) mustMatchNewPassword,
  }) {
    return mustMatchNewPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue, int min)? succeedLength,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? mustMatchNewPassword,
  }) {
    return mustMatchNewPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? succeedLength,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? mustMatchNewPassword,
    required TResult orElse(),
  }) {
    if (mustMatchNewPassword != null) {
      return mustMatchNewPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SucceedLength<T> value) succeedLength,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(MatchNewPassword<T> value) mustMatchNewPassword,
  }) {
    return mustMatchNewPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(SucceedLength<T> value)? succeedLength,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(MatchNewPassword<T> value)? mustMatchNewPassword,
  }) {
    return mustMatchNewPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SucceedLength<T> value)? succeedLength,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(MatchNewPassword<T> value)? mustMatchNewPassword,
    required TResult orElse(),
  }) {
    if (mustMatchNewPassword != null) {
      return mustMatchNewPassword(this);
    }
    return orElse();
  }
}

abstract class MatchNewPassword<T> implements ValueFailure<T> {
  const factory MatchNewPassword({required final T failedValue}) =
      _$MatchNewPasswordImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchNewPasswordImplCopyWith<T, _$MatchNewPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
