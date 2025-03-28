part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.initialized() = _Initialized;

  const factory MessageEvent.getAllMessages() = _GetAllMessages;
}
