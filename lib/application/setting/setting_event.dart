part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.initialized() = _Initialized;

  const factory SettingEvent.editUserProfilePhoto(
      {required User user,
      required String? selectedUserImage}) = _EditUserProfilePhoto;
}
