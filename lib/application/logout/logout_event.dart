part of 'logout_bloc.dart';

@freezed
class LogoutEvent with _$LogoutEvent {
  const factory LogoutEvent.initialized() = _Initialized;

  const factory LogoutEvent.logOut() = _LogOut;
}
