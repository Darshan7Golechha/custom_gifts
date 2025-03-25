import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/application/auth/auth_bloc.dart';
import 'package:flutter_application_1/presentation/core/custom_icon_button.dart';
import 'package:flutter_application_1/presentation/vendor/widgets/custom_hashtag_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () => context.go(
                Uri(
                  path: AppRouter.addItem,
                  queryParameters: {
                    'itemID': context.read<AuthBloc>().state.currentUser.userID
                  },
                ).toString(),
              ),
              contentPadding: EdgeInsets.zero,
              horizontalTitleGap: 15,
              minLeadingWidth: 50,
              leading: BlocBuilder<AuthBloc, AuthState>(
                buildWhen: (previous, current) =>
                    previous.currentUser.photoURL !=
                    current.currentUser.photoURL,
                builder: (context, state) {
                  return CircleAvatar(
                    backgroundImage: NetworkImage(
                      state.currentUser.photoURL,
                    ),
                    backgroundColor: Colors.pink.shade100,
                    radius: 25,
                  );
                },
              ),
              title: const CustomHashtagField(
                hint: 'What\'s on your mind right now?',
                label: '',
                enabled: false,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 65),
                  CustomIconButton(
                    title: 'Photo/Video',
                    icon: const Icon(
                      Icons.photo_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    // icon: Image.asset(
                    //   'assets/images/icon_photo.png',
                    //   height: 20,
                    //   width: 20,
                    //   color: Colors.white,
                    // ),
                    onTap: () => context.go(
                      Uri(
                        path: AppRouter.addItem,
                        queryParameters: {
                          'itemID':
                              context.read<AuthBloc>().state.currentUser.userID
                        },
                      ).toString(),
                    ),
                  ),
                  const SizedBox(width: 20),
                  // CustomIconButton(
                  //   title: 'Albums'.tr(),
                  //   // icon: const Icon(
                  //   //   Icons.photo_album_outlined,
                  //   //   color: Colors.white,
                  //   //   size: 20,
                  //   // ),
                  //   icon: Image.asset(
                  //     'assets/images/icon_album.png',
                  //     height: 20,
                  //     width: 20,
                  //     color: Colors.white,
                  //   ),
                  //   onTap: () => context.go(Uri(
                  //       path: AppRoutes.albums,
                  //       queryParameters: {
                  //         'userID':
                  //             context.read<AuthBloc>().state.currentUser.userID
                  //       }).toString()),
                  // ),
                  // SizedBox(width: UIConstants.padding),
                  // CustomIconButton(
                  //   title: 'Live Stream'.tr(),
                  //   icon: LineIcons.video,
                  //   onTap: () => _startLiveStream(context),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
