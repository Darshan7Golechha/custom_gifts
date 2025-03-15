part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const UserState._(); // Add this private constructor

  const factory UserState({
    required Option<Either<ApiFailure, dynamic>> failureOrSuccessOption,
    required bool isLoading,
    required User user,
    required List<Item> itemList,
  }) = _UserState;

  factory UserState.initial() => UserState(
        failureOrSuccessOption: const None(),
        isLoading: false,
        itemList: <Item>[],
        user: User.empty(),
      );
}
