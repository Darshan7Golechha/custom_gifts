import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/domain/message/entities/message.dart';
import 'package:flutter_application_1/infrastructure/message/dtos/message_dto.dart';

class MessageRemoteDataSource {
  final messageRef = FirebaseFirestore.instance
      .collection('messages')
      .withConverter<MessageDto>(
        fromFirestore: (snapshots, _) => MessageDto.fromJson(snapshots.data()!),
        toFirestore: (messageDto, _) => messageDto.toJson(),
      );

  Future<List<MessageDto>> getAllMessages() async {
    return (await messageRef
            .where('users',
                arrayContains: FirebaseAuth.instance.currentUser!.uid)
            .orderBy('lastMessageTime', descending: true)
            .get())
        .docs
        .map((e) => e.data())
        .toList();
  }

  Future<void> addMessage(Message message) async {
    await messageRef
        .doc(message.conversationID)
        .update(
          MessageDto.fromDomain(message).toJson(),
        )
        .catchError(
          (e) => messageRef.doc(message.conversationID).set(
                MessageDto.fromDomain(message),
              ),
        );
  }
}
