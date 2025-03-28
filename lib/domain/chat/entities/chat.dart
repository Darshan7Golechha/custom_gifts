import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
class Chat with _$Chat {
  const Chat._();

  const factory Chat({
    required DateTime createdDate,
    required String message,
    required String imageURL,
    required String videoURL,
    required String voiceURL,
    required String senderUserID,
    required String conversationID,
  }) = _Chat;

  factory Chat.empty() => Chat(
        createdDate: DateTime(2023),
        message: '',
        imageURL: '',
        voiceURL: '',
        videoURL: '',
        senderUserID: '',
        conversationID: '',
      );
}
