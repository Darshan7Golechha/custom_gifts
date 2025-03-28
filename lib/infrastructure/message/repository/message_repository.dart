import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/core/error/failure_handler.dart';
import 'package:flutter_application_1/domain/message/entities/message.dart';
import 'package:flutter_application_1/domain/message/repository/i_message_repository.dart';
import 'package:flutter_application_1/infrastructure/message/datasource/message_remote.dart';
import 'package:flutter_application_1/infrastructure/message/dtos/message_dto.dart';
import 'package:flutter_application_1/infrastructure/user/datasource/user_remote.dart';

class MessageRepository implements IMessageRepository {
  final MessageRemoteDataSource messageRemoteDataSource;
  final UserRemoteDataSource userRemoteDataSource;

  MessageRepository({
    required this.messageRemoteDataSource,
    required this.userRemoteDataSource,
  });

  @override
  Future<Either<ApiFailure, List<Message>>> getAllMessages() async {
    try {
      final messageDtoList = await messageRemoteDataSource.getAllMessages();

      List<Message> messages = [];
      for (MessageDto messageDto in messageDtoList) {
        String otherUserID = messageDto.users.firstWhere(
          (e) => e != auth.FirebaseAuth.instance.currentUser!.uid,
        );
        final userDto = await userRemoteDataSource.getUser(otherUserID);
        messages.add(messageDto.toDomain(userDto.toDomain()));
      }

      return Right(messages);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
