import 'package:flutter_application_1/domain/core/error/tr_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failures.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.other(String message) = _Other;
  const factory ApiFailure.serverError(String message) = _ServerError;
  const factory ApiFailure.poorConnection() = _PoorConnection;
  const factory ApiFailure.serverTimeout() = _ServerTimeout;

  // permission failure
  const factory ApiFailure.photoPermissionFailed() = _PhotoPermissionFailed;
  const factory ApiFailure.storagePermissionFailed() = _StoragePermissionFailed;

  // common failure
  const factory ApiFailure.noRecordFound() = _NoRecordFound;
}

extension ApiFailureExt on ApiFailure {
  //ignore:long-method
  TRObject get failureMessage => map(
        other: (other) => TRObject(other.message),
        serverError: (serverError) => TRObject(serverError.message),
        poorConnection: (_) => const TRObject('Poor Internet connection'),
        serverTimeout: (_) => const TRObject('Server time out'),
        photoPermissionFailed: (_) => const TRObject(
          'Please enable Photos permission from the app settings',
        ),
        storagePermissionFailed: (_) => const TRObject(
          'Please enable Storage permission from the app settings',
        ),
        noRecordFound: (_) => const TRObject('No record found'),
      );
}
