import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/application/auth/auth_bloc.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';

import 'package:flutter_application_1/application/chat/chat_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_application_1/domain/chat/entities/chat.dart';
import 'package:flutter_application_1/infrastructure/chat/dtos/chat_dto.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:flutter_application_1/presentation/auth/widgets/custom_button.dart';
import 'package:flutter_application_1/presentation/auth/widgets/custom_text_field.dart';
import 'package:flutter_application_1/presentation/core/components/image_picker_service.dart';
import 'package:flutter_application_1/presentation/core/components/user_label.dart';
import 'package:flutter_application_1/presentation/core/items/photo_post.dart';
import 'package:flutter_application_1/presentation/core/items/video_post.dart';
import 'package:flutter_application_1/presentation/core/no_record.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class UserConversation extends StatelessWidget {
  final String userID;
  final String conversationID;

  const UserConversation({
    super.key,
    required this.userID,
    required this.conversationID,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _UserConversationMobile(
      userID: userID,
      conversationID: conversationID,
    ));
  }
}

class _UserConversationMobile extends StatelessWidget {
  final String userID;
  final String conversationID;

  const _UserConversationMobile({
    super.key,
    required this.userID,
    required this.conversationID,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go(
            '/home',
          ),
        ),
        // title: const Text('Product Details'),
      ),
      body: _UserConversationList(
        userID: userID,
        conversationID: conversationID,
      ),
    );
  }
}

class _UserConversationList extends StatefulWidget {
  final String userID;
  final String conversationID;

  const _UserConversationList({
    super.key,
    required this.userID,
    required this.conversationID,
  });

  @override
  State<_UserConversationList> createState() => _UserConversationListState();
}

class _UserConversationListState extends State<_UserConversationList> {
  @override
  void initState() {
    context
        .read<ChatBloc>()
        .add(ChatEvent.getConversation(conversationID: widget.conversationID));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String myUserID = context.read<AuthBloc>().state.currentUser.userID;
    return BlocProvider(
      create: (context) => locator<UserBloc>()
        ..add(
          UserEvent.fetchUserByUserID(userID: widget.userID),
        ),
      child: BlocBuilder<UserBloc, UserState>(
        buildWhen: (previous, current) => previous.user != current.user,
        builder: (context, state) {
          return state.isLoading
              ? const CircularProgressIndicator()
              : Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: [
                      UserLabel(
                        user: state.user,
                        enablePadding: true,
                        // trailing: SendTipButton(userID: state.user.userID),
                      ),
                      Expanded(
                        child: Card(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            children: [
                              Expanded(
                                child: BlocBuilder<ChatBloc, ChatState>(
                                  buildWhen: (previous, current) =>
                                      previous.isLoading != current.isLoading,
                                  builder: (context, state) {
                                    if (state.isLoading) {
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                    return FirestoreListView<ChatDto>(
                                      reverse: true,
                                      key: Key(DateTime.now().toString()),
                                      query: state.chatQuery!,
                                      pageSize: 20,
                                      itemBuilder: (context, snapshot) {
                                        final chatDto = snapshot.data();

                                        return _UserConversationTile(
                                          chat: chatDto.toDomain(),
                                          isSent:
                                              chatDto.senderUserID == myUserID,
                                        );
                                      },
                                      emptyBuilder: (context) =>
                                          const NoRecordFound(
                                        title: 'Start a conversation',
                                        subTitle: '',
                                      ),
                                    );
                                  },
                                ),
                              ),
                              _MessageBox(
                                conversationID: widget.conversationID,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}

class _MessageBox extends StatefulWidget {
  final String conversationID;

  const _MessageBox({super.key, required this.conversationID});

  @override
  State<_MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<_MessageBox> {
  final msgTEC = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    msgTEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(
              hint: 'Type a message...',
              label: '',
              controller: msgTEC,
              prefixIcon: PopupMenuButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      onTap: () => _selectPhotoFromGallery(context),
                      child: ListTile(
                        onTap: () => _selectPhotoFromGallery(context),
                        leading: const Icon(Icons.photo),
                        title: const Text('Photo'),
                      ),
                    ),
                    PopupMenuItem(
                      onTap: () => _selectVideoFromGallery(context),
                      child: ListTile(
                        onTap: () => _selectVideoFromGallery(context),
                        leading: const Icon(Icons.video_collection_rounded),
                        title: const Text('Video'),
                      ),
                    ),
                    // PopupMenuItem(
                    //   onTap: () => _recordVoiceMessage(context),
                    //   child: ListTile(
                    //     onTap: () => _recordVoiceMessage(context),
                    //     leading: const Icon(Icons.mic),
                    //     title: Text('Voice'.tr()),
                    //   ),
                    // ),
                  ];
                },
                child: const Icon(
                  Icons.attach_file_rounded,
                  size: 25,
                  color: Color(0xffE85DBE),
                ),
              ),
              suffixIcon: InkWell(
                onTap: () {
                  if (msgTEC.text.trim().isNotEmpty) {
                    context.read<ChatBloc>().add(
                          ChatEvent.sendMessage(
                            chat: Chat.empty().copyWith(
                              conversationID: widget.conversationID,
                              message: msgTEC.text,
                            ),
                          ),
                        );
                  }
                  msgTEC.clear();
                },
                child: const Icon(
                  Icons.send,
                  size: 25,
                  color: Color(0xffE85DBE),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _selectPhotoFromGallery(BuildContext context) {
    Dialog dialog = Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: 500,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Select photo from Gallery',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'CANCEL',
                      color: Colors.grey,
                      function: () {
                        context.pop();
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomButton(
                      text: 'SELECT',
                      function: () async {
                        final selectedImage = await pickImage(context);
                        if (selectedImage.isNotEmpty) {
                          context.read<ChatBloc>().add(
                                ChatEvent.sendMessage(
                                  chat: Chat.empty().copyWith(
                                    conversationID: widget.conversationID,
                                    message: msgTEC.text,
                                    imageURL: selectedImage,
                                  ),
                                ),
                              );
                          msgTEC.clear();
                          context.pop();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) => dialog,
    );
  }

  // _recordVoiceMessage(BuildContext context) {
  //   Dialog dialog = Dialog(
  //     backgroundColor: Colors.white,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(20),
  //     ),
  //     child: SizedBox(
  //       width: 500,
  //       child: Padding(
  //         padding: EdgeInsets.all(10),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text(
  //               'Tap the mic icon to record a voice message'.tr(),
  //               style: Theme.of(context).textTheme.labelLarge,
  //             ),
  //             const SizedBox(
  //               height: 20,
  //             ),
  //             SizedBox(
  //               width: 500,
  //               height: 150,
  //               child: VoiceMessage(
  //                 onRecorded: (audioPath) {
  //                   if (audioPath.isNotEmpty) {
  //                     context.read<ChatBloc>().add(
  //                           ChatEvent.sendMessage(
  //                             chat: Chat.empty().copyWith(
  //                               conversationID: widget.conversationID,
  //                               message: msgTEC.text,
  //                               voiceURL: audioPath,
  //                             ),
  //                           ),
  //                         );
  //                     msgTEC.clear();
  //                     context.pop();
  //                     showSnackBar(
  //                       context: context,
  //                       message: 'Sending voice note. Please wait.'.tr(),
  //                     );
  //                   }
  //                 },
  //               ),
  //             ),
  //             CustomButton(
  //               text: 'CANCEL'.tr(),
  //               color: Colors.grey,
  //               function: () {
  //                 context.pop();
  //               },
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  //   context.pop();
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (BuildContext context) => dialog,
  //   );
  // }

  _selectVideoFromGallery(BuildContext context) {
    Dialog dialog = Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: 500,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Select video from Gallery',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'CANCEL',
                      color: Colors.grey,
                      function: () {
                        context.pop();
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomButton(
                      text: 'SELECT',
                      function: () async {
                        final selectedVideo = await pickVideo(context);
                        if (selectedVideo.isNotEmpty) {
                          context.read<ChatBloc>().add(
                                ChatEvent.sendMessage(
                                  chat: Chat.empty().copyWith(
                                    conversationID: widget.conversationID,
                                    message: msgTEC.text,
                                    videoURL: selectedVideo,
                                  ),
                                ),
                              );
                          msgTEC.clear();
                          context.pop();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) => dialog,
    );
  }
}

class _UserConversationTile extends StatelessWidget {
  final Chat chat;
  final bool isSent;

  const _UserConversationTile(
      {super.key, required this.isSent, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment:
          isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment:
              isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (chat.imageURL.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        10,
                        10,
                        10,
                        0,
                      ),
                      child: PhotoPost(
                          url: chat.imageURL,
                          postID: '',
                          width: 150,
                          height: 150),
                    ),
                  // if (chat.videoURL.isNotEmpty)
                  //   Container(
                  //     margin: const EdgeInsets.fromLTRB(
                  //       10,
                  //       10,
                  //       10,
                  //       0,
                  //     ),
                  //     child: VideoPost(
                  //       url: chat.videoURL,
                  //       width: 150,
                  //       height: 150,
                  //     ),
                  //   ),
                  // if (chat.voiceURL.isNotEmpty)
                  //   Container(
                  //     margin: EdgeInsets.fromLTRB(
                  //       10,
                  //       10,
                  //       10,
                  //       0,
                  //     ),
                  //     child: VoicePost(
                  //       url: chat.voiceURL,
                  //       width: 300,
                  //       height: 100,
                  //     ),
                  //   ),
                  if (chat.message.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isSent
                            ? const Color(0xffE85DBE)
                            : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        chat.message,
                        style: TextStyle(
                          color: isSent ? Colors.white : Colors.black,
                        ),
                        maxLines: 100,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
          child: Text(
            // getTimeAgoForDateTime(chat.createdDate),
            DateFormat('dd MMM yyyy hh:mm a').format(chat.createdDate),

            textScaleFactor: 0.8,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
