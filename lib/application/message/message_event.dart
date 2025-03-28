part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.initialised() = _Initialised;

  const factory MessageEvent.getAllMessages() = _GetAllMessages;
}
