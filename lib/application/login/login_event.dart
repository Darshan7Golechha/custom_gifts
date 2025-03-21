part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.initialized() = _Initialized;

  const factory LoginEvent.toggleSignIn() = _ToggleSignIn;

  const factory LoginEvent.emailChanged(String emailStr) = _EmailChanged;

  const factory LoginEvent.userNameChanged(String userNameStr) =
      _userNameChanged;

  const factory LoginEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;

  const factory LoginEvent.fullNameChanged(String fullNameStr) =
      _FullNameChanged;

  const factory LoginEvent.signIn() = _SignIn;

  const factory LoginEvent.signUp() = _SignUp;

  const factory LoginEvent.forgotPassword() = _ForgotPassword;
}
