import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_application_1/domain/chat/entities/chat.dart';
import 'package:flutter_application_1/domain/chat/repository/i_chat_repository.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/core/error/failure_handler.dart';
import 'package:flutter_application_1/domain/message/entities/message.dart';
import 'package:flutter_application_1/infrastructure/chat/datasource/chat_remote.dart';
import 'package:flutter_application_1/infrastructure/chat/dtos/chat_dto.dart';
import 'package:flutter_application_1/infrastructure/core/datasource/storage_remote.dart';
import 'package:flutter_application_1/infrastructure/message/datasource/message_remote.dart';
import 'package:flutter_application_1/infrastructure/user/datasource/user_remote.dart';

class ChatRepository implements IChatRepository {
  final ChatRemoteDataSource chatRemoteDataSource;
  final StorageRemoteDataSource storageRemoteDataSource;
  final MessageRemoteDataSource messageRemoteDataSource;
  final UserRemoteDataSource userRemoteDataSource;

  ChatRepository({
    required this.chatRemoteDataSource,
    required this.storageRemoteDataSource,
    required this.messageRemoteDataSource,
    required this.userRemoteDataSource,
  });

  @override
  Either<ApiFailure, Query<ChatDto>> getConversation(
      {required String conversationID}) {
    try {
      final chatDtoList = chatRemoteDataSource.getAllMessages(conversationID);

      return Right(chatDtoList);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> sendMessage({required Chat chat}) async {
    try {
      String userID = auth.FirebaseAuth.instance.currentUser!.uid;
      if (chat.imageURL.isNotEmpty) {
        String url = await storageRemoteDataSource.uploadPhotoAndGetURL(
          chat.imageURL,
          'chat_images',
        );

        chat = chat.copyWith(
          imageURL: url,
        );
      }
      if (chat.videoURL.isNotEmpty) {
        String url = await storageRemoteDataSource.uploadVideoAndGetURL(
          chat.videoURL,
          'chat_videos',
        );
        chat = chat.copyWith(
          videoURL: url,
        );
      }
      if (chat.voiceURL.isNotEmpty) {
        String url = await storageRemoteDataSource.uploadVoiceAndGetURL(
          chat.voiceURL,
          'chat_voices',
        );
        chat = chat.copyWith(
          voiceURL: url,
        );
      }
      await chatRemoteDataSource.sendMessage(
        chat.copyWith(
          senderUserID: userID,
          createdDate: DateTime.now(),
        ),
      );
      await messageRemoteDataSource.addMessage(
        Message.empty().copyWith(
          conversationID: chat.conversationID,
          lastMessage: _getLastMessageText(chat),
          lastMessageTime: DateTime.now(),
          users: [
            userID,
            chat.conversationID.replaceAll(userID, '').replaceAll('|', '')
          ]..sort(),
        ),
      );
      String reciverID =
          chat.conversationID.replaceAll(userID, '').replaceAll('|', '');
      await userRemoteDataSource.updateReadMessagesStatus(reciverID, true);
      return const Right(true);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  _getLastMessageText(Chat message) {
    if (message.imageURL.isNotEmpty) return '> Photo';
    if (message.videoURL.isNotEmpty) return '> Video';
    if (message.voiceURL.isNotEmpty) return '> Voice Note';
    return message.message;
  }
}
