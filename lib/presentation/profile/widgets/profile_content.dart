import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/application/auth/auth_bloc.dart';
import 'package:flutter_application_1/application/logout/logout_bloc.dart';
import 'package:flutter_application_1/application/setting/setting_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/presentation/auth/widgets/custom_button.dart';
import 'package:flutter_application_1/presentation/core/components/image_picker_service.dart';
import 'package:flutter_application_1/presentation/core/snack_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:go_router/go_router.dart';

class ProfileContent extends StatefulWidget {
  const ProfileContent({super.key});

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  String selectedProfileImage = '';
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(UserEvent.fetchUserByUserID(
        userID: context.read<AuthBloc>().state.currentUser.userID));
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        final user = state.user;

        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  // Profile Photo Section
                  BlocConsumer<SettingBloc, SettingState>(
                    listenWhen: (p, c) =>
                        p.apiFailureOrSuccessOption !=
                        c.apiFailureOrSuccessOption,
                    listener: (context, state) {
                      state.apiFailureOrSuccessOption.fold(
                        () {},
                        (a) => a.fold(
                          (failed) => () => showSnackBar(
                                context: context,
                                message: failed.failureMessage.toString(),
                              ),
                          (success) => () {
                            showSnackBar(
                              context: context,
                              message: 'Photo updated successfully',
                            );
                          },
                        ),
                      );
                    },
                    buildWhen: (p, c) => p.isLoading != c.isLoading,
                    builder: (context, state) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: colorScheme.primaryContainer,
                                width: 4,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: colorScheme.primaryContainer,
                              backgroundImage: user.photoURL.isNotEmpty
                                  ? NetworkImage(user.photoURL)
                                  : null,
                              child: user.photoURL.isEmpty
                                  ? Icon(
                                      Icons.person,
                                      size: 60,
                                      color: colorScheme.onPrimaryContainer,
                                    )
                                  : null,
                            ),
                          ),
                          if (user.photoURL.isEmpty)
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: colorScheme.primary,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: colorScheme.surface,
                                    width: 2,
                                  ),
                                ),
                                child: IconButton(
                                  iconSize: 20,
                                  padding: const EdgeInsets.all(8),
                                  constraints: const BoxConstraints(),
                                  icon: const Icon(Icons.add_a_photo),
                                  color: colorScheme.onPrimary,
                                  onPressed: () => _selectCoverPhotoFromGallery(
                                      context, user),
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  // User Info
                  Text(
                    user.fullName.isNotEmpty ? user.fullName : 'John Doe',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onSurface,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    user.email.isNotEmpty ? user.email : 'john.doe@example.com',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
            // Profile Sections
            SliverToBoxAdapter(
              child: Card(
                margin: const EdgeInsets.all(16),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(
                    color: colorScheme.outlineVariant.withOpacity(0.2),
                  ),
                ),
                child: Column(
                  children: [
                    _buildProfileSection(
                      context: context,
                      icon: Icons.shopping_bag_outlined,
                      title: 'Orders',
                      onTap: () {},
                    ),
                    Divider(
                      height: 1,
                    ),
                    _buildProfileSection(
                      context: context,
                      icon: Icons.favorite,
                      title: 'Wishlist',
                      onTap: () {},
                    ),
                    Divider(
                      height: 1,
                    ),
                    _buildProfileSection(
                      context: context,
                      icon: Icons.settings,
                      title: 'Settings',
                      onTap: () {},
                    ),
                    Divider(
                      height: 1,
                    ),
                    _buildProfileSection(
                      context: context,
                      icon: Icons.help,
                      title: 'Help & Support',
                      onTap: () {},
                    ),
                    Divider(
                      height: 1,
                    ),
                    _buildProfileSection(
                      context: context,
                      icon: Icons.logout,
                      title: 'Logout',
                      onTap: () {
                        _logOut(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _logOut(BuildContext context) {
    // context.pop();
    Dialog dialog = Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: 500,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Are you sure to log out?',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              BlocConsumer<LogoutBloc, LogoutState>(
                buildWhen: (previous, current) =>
                    previous.isLoading != current.isLoading,
                listener: (context, state) {
                  state.logoutFailureOrSuccessOption.fold(
                    () {},
                    (a) => {
                      a.fold(
                        (f) {
                          final failureMessage = f.failureMessage;
                          showSnackBar(
                            context: context,
                            message: failureMessage.toString(),
                          );
                        },
                        (r) {
                          context.go(Uri(path: AppRouter.login).toString());
                        },
                      )
                    },
                  );
                },
                builder: (context, state) {
                  return state.isLoading
                      ? const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                          ],
                        )
                      : Row(
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
                                text: 'YES, LOG OUT',
                                function: () {
                                  context.read<LogoutBloc>().add(
                                        const LogoutEvent.logOut(),
                                      );
                                  context.pop();
                                },
                              ),
                            ),
                          ],
                        );
                },
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

void _selectCoverPhotoFromGallery(BuildContext context, User user) {
  showDialog(
    context: context,
    builder: (BuildContext context) => Dialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Change Profile Photo',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Choose a new photo for your profile',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryContainer,
                      foregroundColor:
                          Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    onPressed: () async {
                      try {
                        final selectedImage = await pickImage(context);
                        if (selectedImage.isNotEmpty && context.mounted) {
                          context.read<SettingBloc>().add(
                                SettingEvent.editUserProfilePhoto(
                                  user: user,
                                  selectedUserImage: selectedImage,
                                ),
                              );
                          context.pop();
                        }
                      } catch (e) {
                        // Handle error
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Text('Failed to select image: ${e.toString()}'),
                            backgroundColor:
                                Theme.of(context).colorScheme.error,
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.photo_library),
                    label: const Text('Choose from Gallery'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    onPressed: () => context.pop(),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildProfileSection({
  required BuildContext context,
  required IconData icon,
  required String title,
  required VoidCallback onTap,
}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    trailing: const Icon(Icons.chevron_right),
    onTap: onTap,
  );
}
