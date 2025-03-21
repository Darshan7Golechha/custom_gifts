import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/domain/core/error/error.dart';
import 'package:flutter_application_1/domain/core/error/failures.dart';
import 'package:flutter_application_1/domain/core/value/value_validators.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrDefaultValue(T defaultValue) {
    return value.fold((f) => defaultValue, id);
  }

  T getValue() => value.fold((f) => f.failedValue, (r) => r);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class NotificationType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NotificationType(String input) {
    return NotificationType._(validateStringNotEmpty(input));
  }

  String get displayNotificationText =>
      getType(type: value.getOrElse(() => 'like'));

  bool get isLikeNotification => value.getOrElse(() => '') == 'like';

  bool get isCommentNotification => value.getOrElse(() => '') == 'comment';

  bool get isUnlockPostNotification =>
      value.getOrElse(() => '') == 'unlockPost';

  bool get isUnlockAlbumNotification =>
      value.getOrElse(() => '') == 'unlockAlbum';

  bool get isLikeAlbumNotification => value.getOrElse(() => '') == 'likeAlbum';

  bool get isTipNotification => value.getOrElse(() => '') == 'tip';

  bool get isSubscriptionNotification =>
      value.getOrElse(() => '') == 'subscribe';

  const NotificationType._(this.value);
}
