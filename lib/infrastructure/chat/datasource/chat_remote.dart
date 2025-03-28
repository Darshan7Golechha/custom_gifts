import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/domain/chat/entities/chat.dart';
import 'package:flutter_application_1/infrastructure/chat/dtos/chat_dto.dart';

class ChatRemoteDataSource {
  final chatRef = FirebaseFirestore.instance
      .collection('conversation')
      .withConverter<ChatDto>(
        fromFirestore: (snapshots, _) => ChatDto.fromJson(snapshots.data()!),
        toFirestore: (userDto, _) => userDto.toJson(),
      );

  Query<ChatDto> getAllMessages(String conversationID) {
    return chatRef
        .where('conversationID', isEqualTo: conversationID)
        .orderBy('createdDate', descending: true);
  }

  Future<void> sendMessage(Chat chat) async {
    await chatRef.doc().set(ChatDto.fromDomain(chat));
  }

// deleteMessage(String docID) {
//   ref.collection("chats").doc(docID).update({
//     'message': 'This message was deleted',
//   });
// }

// checkIfChatRoomExists(String userID) async {
//   try {
//     bool chatRoomExists = false;
//     QuerySnapshot querySnapshot = await chatRef
//         .where('users', arrayContains: FirebaseAuth.instance.currentUser!.uid)
//         .get();
//     if (querySnapshot.docs.isNotEmpty) {
//       for (int i = 0; i < querySnapshot.docs.length; i++) {
//         if (querySnapshot.docs[i].id.contains(userID)) {
//           chatRoomExists = true;
//           return querySnapshot.docs[i].id;
//         }
//       }
//       if (!chatRoomExists) return createChatRoom(userID);
//     } else {
//       return createChatRoom(userID);
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// createChatRoom(String userID) async {
//   String conversationID = userController.currentUser.value.userID + "|" + userID;
//   ref.collection("chats").doc(conversationID).set({
//     'conversationID': conversationID,
//     'lastMessage': '',
//     'lastMessageTime': DateTime.now().millisecondsSinceEpoch,
//     'users': [userController.currentUser.value.userID, userID],
//   }).catchError((e) {
//     print(e);
//     showRedAlert('Something went wrong');
//   });

//   return userController.currentUser.value.userID + "|" + userID;
// }
}
