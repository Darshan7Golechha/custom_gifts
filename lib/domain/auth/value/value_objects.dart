import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/core/error/failures.dart';
import 'package:flutter_application_1/domain/core/value/value_object.dart';
import 'package:flutter_application_1/domain/core/value/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateStringNotEmpty(input).flatMap(validateEmailAddress),
    );
  }

  const EmailAddress._(this.value);
}

class StringValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringValue(String input) {
    return StringValue._(
      validateStringNotEmpty(input),
    );
  }

  const StringValue._(this.value);
}

class DoubleValue extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory DoubleValue(String input) {
    return DoubleValue._(
      convertToDouble(input),
    );
  }

  const DoubleValue._(this.value);
}
