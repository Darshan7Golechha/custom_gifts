part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required User currentUser,
    required List<User> blockedUsersList,
    required List<User>
        myBlockerUsersList, // These are users who have blocked me
    required bool isLoading,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        currentUser: User.empty(),
        blockedUsersList: <User>[],
        myBlockerUsersList: <User>[],
        apiFailureOrSuccessOption: none(),
        isLoading: false,
      );

  List<String> get blockedUsers =>
      blockedUsersList.map((e) => e.userID).toList();

  List<String> get myBlockers =>
      myBlockerUsersList.map((e) => e.userID).toList();
}
