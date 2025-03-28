part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.initialised() = _Initialised;

  const factory ChatEvent.getConversation({required String conversationID}) = _GetConversation;

  const factory ChatEvent.sendMessage({required Chat chat}) = _SendMessage;

}
