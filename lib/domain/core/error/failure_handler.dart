import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/core/error/exception.dart';

abstract final class FailureHandler {
  static ApiFailure handleFailure(Object error) {
    switch (error.runtimeType) {
      case const (SocketException):
        return const ApiFailure.poorConnection();
      case const (TimeoutException):
        return const ApiFailure.serverTimeout();
      case const (PlatformException):
        return ApiFailure.other(
          (error as PlatformException).message?.toString() ?? '',
        );
      case const (OtherException):
        return ApiFailure.other((error as OtherException).message);

      default:
        return ApiFailure.other(error.toString());
    }
  }
}
