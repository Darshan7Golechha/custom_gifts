part of 'logout_bloc.dart';

@freezed
class LogoutState with _$LogoutState {
  const LogoutState._();

  const factory LogoutState({
    required User currentUser,
    // These are users who have blocked me
    required bool isLoading,
    required Option<Either<ApiFailure, dynamic>> logoutFailureOrSuccessOption,
  }) = _LogoutState;

  factory LogoutState.initial() => LogoutState(
        currentUser: User.empty(),
        isLoading: false,
        logoutFailureOrSuccessOption: none(),
      );
}
