import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:go_router/go_router.dart';

class UserLabel extends StatelessWidget {
  final User user;
  final Widget trailing;
  final bool enablePadding;

  const UserLabel({
    super.key,
    required this.user,
    this.enablePadding = false,
    this.trailing = const SizedBox.shrink(),
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding:
            enablePadding ? const EdgeInsets.all(20 / 2) : EdgeInsets.zero,
        leading: InkWell(
          onTap: () => context.go(AppRouter.home),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              user.photoURL,
            ),
            backgroundColor: Colors.pink.shade100,
            radius: 25,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => context.go(AppRouter.home),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    user.fullName,
                    style: Theme.of(context).textTheme.labelMedium!,
                  ),
                  // if (user.isVerified || user.isVIPUser) ...[
                  //   const SizedBox(width: 5),
                  //   Icon(
                  //     Icons.verified,
                  //     color: user.isVIPUser ? Colors.blue : Colors.green,
                  //     size: 20,
                  //   ),
                  // ],
                ],
              ),
            ),
            Text(
              '@${user.username}',
              style: Theme.of(context).textTheme.titleSmall!,
            ),
          ],
        ),
        subtitle: Text(
          ' bbbbbb',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.grey),
        ),
        trailing: trailing,
      ),
    );
  }
}
