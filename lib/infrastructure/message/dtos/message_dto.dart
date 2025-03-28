// ignore_for_file: invalid_annotation_target

import 'package:flutter_application_1/domain/message/entities/message.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_dto.freezed.dart';
part 'message_dto.g.dart';

@freezed
class MessageDto with _$MessageDto {
  const MessageDto._();

  const factory MessageDto({
    @JsonKey(name: 'conversationID', defaultValue: '')
    required String conversationID,
    @JsonKey(name: 'users', defaultValue: []) required List users,
    @JsonKey(name: 'lastMessage', defaultValue: '') required String lastMessage,
    @JsonKey(name: 'lastMessageTime', defaultValue: 0)
    required int lastMessageTime,
  }) = _MessageDto;

  factory MessageDto.fromDomain(Message message) {
    return MessageDto(
      conversationID: message.conversationID,
      users: message.users,
      lastMessage: message.lastMessage,
      lastMessageTime: message.lastMessageTime.millisecondsSinceEpoch,
    );
  }

  Message toDomain(User user) {
    return Message(
      conversationID: conversationID,
      users: users,
      user: user,
      lastMessage: lastMessage,
      lastMessageTime: DateTime.fromMillisecondsSinceEpoch(lastMessageTime),
    );
  }

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);
}
