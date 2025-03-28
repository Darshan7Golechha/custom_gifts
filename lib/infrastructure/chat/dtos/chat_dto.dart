// ignore_for_file: invalid_annotation_target

import 'package:flutter_application_1/domain/chat/entities/chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_dto.freezed.dart';

part 'chat_dto.g.dart';

@freezed
class ChatDto with _$ChatDto {
  const ChatDto._();

  const factory ChatDto({
    @JsonKey(name: 'createdDate', defaultValue: 0) required int createdDate,
    @JsonKey(name: 'message', defaultValue: '') required String message,
    @JsonKey(name: 'imageURL', defaultValue: '') required String imageURL,
    @JsonKey(name: 'videoURL', defaultValue: '') required String videoURL,
    @JsonKey(name: 'voiceURL', defaultValue: '') required String voiceURL,
    @JsonKey(name: 'senderUserID', defaultValue: '')
    required String senderUserID,
    @JsonKey(name: 'conversationID', defaultValue: '')
    required String conversationID,
  }) = _ChatDto;

  factory ChatDto.fromDomain(Chat chat) {
    return ChatDto(
      createdDate: chat.createdDate.millisecondsSinceEpoch,
      message: chat.message,
      imageURL: chat.imageURL,
      videoURL: chat.videoURL,
      voiceURL: chat.voiceURL,
      senderUserID: chat.senderUserID,
      conversationID: chat.conversationID,
    );
  }

  Chat toDomain() {
    return Chat(
      createdDate: DateTime.fromMillisecondsSinceEpoch(createdDate),
      message: message,
      imageURL: imageURL,
      voiceURL: voiceURL,
      videoURL: videoURL,
      senderUserID: senderUserID,
      conversationID: conversationID,
    );
  }

  factory ChatDto.fromJson(Map<String, dynamic> json) =>
      _$ChatDtoFromJson(json);
}
