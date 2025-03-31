part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.initialised() = _Intialised;
  const factory UserEvent.fetchUserByUserID({required String userID}) =
      _FetchUserByUserID;
  const factory UserEvent.addUser({required User user}) = _AddUser;
  const factory UserEvent.readMessages() = _UnreadMessages;
  const factory UserEvent.getAllVendors() = _GetAllVendors;
}
