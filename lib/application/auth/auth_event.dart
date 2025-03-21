part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initialized() = _Initialized;

  const factory AuthEvent.authenticate({required User user}) = _Authenticate;

  const factory AuthEvent.unAuthenticate() = _UnAuthenticate;

  const factory AuthEvent.refreshUser() = _RefreshUser;
}
