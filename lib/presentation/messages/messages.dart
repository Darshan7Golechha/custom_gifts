import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/application/message/message_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_application_1/domain/message/entities/message.dart';
import 'package:flutter_application_1/presentation/core/no_record.dart';
import 'package:flutter_application_1/presentation/core/scroll_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _MessagesMobile());
  }
}

class _MessagesMobile extends StatelessWidget {
  const _MessagesMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(),
      body: const _MessagesList(),
    );
  }
}

class _MessagesList extends StatefulWidget {
  const _MessagesList({super.key});

  @override
  State<_MessagesList> createState() => _MessagesListState();
}

class _MessagesListState extends State<_MessagesList> {
  @override
  void initState() {
    context.read<MessageBloc>().add(const MessageEvent.getAllMessages());
    context.read<UserBloc>().add(const UserEvent.readMessages());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        return ScrollList(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          header: const Text('Messages'),
          noRecordFoundWidget: const NoRecordFound(
              title:
                  'No messages to show.\nStart a conversation with someone from their profile'),
          controller: ScrollController(),
          isLoading: state.isLoading,
          itemBuilder: (context, index, item) => _MessageTile(
            message: state.messageList[index],
          ),
          items: state.messageList,
        );
      },
    );
  }
}

class _MessageTile extends StatelessWidget {
  final Message message;

  const _MessageTile({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => context.go(Uri(
          path: AppRouter.conversation,
          queryParameters: {
            'userID': message.user.userID,
            'conversationID': message.conversationID,
          },
        ).toString()),
        contentPadding: const EdgeInsets.all(10),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            message.user.photoURL,
          ),
          backgroundColor: Colors.pink.shade100,
          radius: 25,
        ),
        horizontalTitleGap: 20,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.user.fullName,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              message.lastMessage,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        subtitle: Text(
          // getTimeAgoForDateTime(message.lastMessageTime),
          DateFormat('dd MMM yyyy hh:mm a').format(message.lastMessageTime),
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.grey,
              ),
        ),
        // trailing: CircleAvatar(
        //   backgroundColor: Colors.grey.shade100,
        //   radius: 20,
        //   child: const Icon(
        //     Icons.more_vert,
        //     color: Colors.grey,
        //   ),
        // ),
      ),
    );
  }
}
