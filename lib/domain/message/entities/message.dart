import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const Message._();

  const factory Message({
    required String conversationID,
    required List users,
    required User user,
    required String lastMessage,
    required DateTime lastMessageTime,
  }) = _Message;

  factory Message.empty() => Message(
        conversationID: '',
        users: [],
        user: User.empty(),
        lastMessage: '',
        lastMessageTime: DateTime(2023),
      );
}
