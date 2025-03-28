import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/chat/entities/chat.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/infrastructure/chat/dtos/chat_dto.dart';

abstract class IChatRepository {
  Either<ApiFailure, Query<ChatDto>> getConversation(
      {required String conversationID});

  Future<Either<ApiFailure, bool>> sendMessage({required Chat chat});
}
