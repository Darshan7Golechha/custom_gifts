part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required User user,
    required bool isSigningIn,
    required bool isSubmitting,
    required bool isSubmittingForgotPassword,
    required StringValue fullName,
    required StringValue userName,
    required EmailAddress email,
    required StringValue password,
    required bool showErrors,
    required Option<Either<ApiFailure, dynamic>> loginFailureOrSuccessOption,
    required Option<Either<ApiFailure, dynamic>>
        forgotPasswordFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        user: User.empty(),
        isSigningIn: true,
        fullName: StringValue(''),
        userName: StringValue(''),
        isSubmitting: false,
        isSubmittingForgotPassword: false,
        showErrors: false,
        email: EmailAddress(''),
        password: StringValue(''),
        loginFailureOrSuccessOption: none(),
        forgotPasswordFailureOrSuccessOption: none(),
      );
}
