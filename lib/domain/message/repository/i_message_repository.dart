import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/message/entities/message.dart';

abstract class IMessageRepository {
  Future<Either<ApiFailure, List<Message>>> getAllMessages();
}
