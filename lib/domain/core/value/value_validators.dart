import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/auth/value/value_transformers.dart';
import 'package:flutter_application_1/domain/core/error/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  return input.length <= maxLength
      ? right(input)
      : left(ValueFailure.exceedingLength(failedValue: input, max: maxLength));
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  return input.isNotEmpty
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  return RegExp(emailRegex).hasMatch(input)
      ? right(input)
      : left(ValueFailure.invalidEmail(failedValue: input));
}

Either<ValueFailure<double>, double> convertToDouble(String input) {
  return input.isNotEmpty
      ? right(double.parse(input))
      : left(const ValueFailure.empty(failedValue: 0));
}

Either<ValueFailure<String>, String> validateMinStringLength(
  String input,
  int minLength,
) {
  return isMinEightCharacter(input: input, minLength: minLength)
      ? right(input)
      : left(ValueFailure.succeedLength(failedValue: input, min: minLength));
}

getType({required String type}) {
  if (type == 'like') return 'liked your post';
  if (type == 'likeAlbum') return 'liked your album';
  if (type == 'unlockPost') return 'unlocked your post';
  if (type == 'unlockAlbum') return 'unlocked your album';
  if (type == 'comment') return 'commented on your post';
  if (type == 'subscribe') return 'subscribed you';
  if (type == 'tip') return "${'tipped you'} \$";
  return 'like';
}
