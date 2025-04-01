part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    required bool isLoading,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _SettingState;

  factory SettingState.initial() => SettingState(
        isLoading: true,
        apiFailureOrSuccessOption: none(),
      );
}
