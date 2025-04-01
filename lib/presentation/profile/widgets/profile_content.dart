import 'package:flutter/material.dart';
import 'package:flutter_application_1/application/auth/auth_bloc.dart';
import 'package:flutter_application_1/application/setting/setting_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/presentation/auth/widgets/custom_button.dart';
import 'package:flutter_application_1/presentation/core/components/image_picker_service.dart';
import 'package:flutter_application_1/presentation/core/snack_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ProfileContent extends StatefulWidget {
  const ProfileContent({super.key});

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  String selectedProfileImage = '';
  @override
  void initState() {
    context.read<UserBloc>().add(UserEvent.fetchUserByUserID(
        userID: context.read<AuthBloc>().state.currentUser.userID));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        // If loading, show a progress indicator
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        // If there's an error (from failureOrSuccessOption)
        if (state.failureOrSuccessOption.isSome()) {
          return Center(
            child: Text(
              state.failureOrSuccessOption.fold(
                () => '',
                (failure) => "Error: ${failure.toString()}",
              ),
              style: const TextStyle(color: Colors.red),
            ),
          );
        }

        // If user data is available, show profile content
        final user = state.user;

        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              BlocConsumer<SettingBloc, SettingState>(
                listenWhen: (previous, current) =>
                    previous.apiFailureOrSuccessOption !=
                    current.apiFailureOrSuccessOption,
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
                buildWhen: (previous, current) =>
                    previous.isLoading != current.isLoading,
                builder: (context, state) {
                  return Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        backgroundImage: user.photoURL.isNotEmpty
                            ? NetworkImage(user.photoURL)
                            : null,
                        child: user.photoURL.isEmpty
                            ? Icon(
                                Icons.person,
                                size: 50,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                              )
                            : null,
                      ),
                      if (user.photoURL.isEmpty)
                        Positioned(
                          bottom: -10,
                          right: -5,
                          child: IconButton(
                            iconSize: 20,
                            padding: const EdgeInsets.all(8),
                            constraints: const BoxConstraints(),
                            icon: const Icon(Icons.add_a_photo),
                            color: Colors.black,
                            onPressed: () {
                              _selectCoverPhotoFromGallery(context, user);
                            },
                          ),
                        ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 16),
              Text(
                user.fullName.isNotEmpty ? user.fullName : 'John Doe',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                user.email.isNotEmpty ? user.email : 'john.doe@example.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 24),
              _buildProfileSection(
                icon: Icons.shopping_bag,
                title: 'Orders',
                onTap: () {},
              ),
              _buildProfileSection(
                icon: Icons.favorite,
                title: 'Wishlist',
                onTap: () {},
              ),
              _buildProfileSection(
                icon: Icons.settings,
                title: 'Settings',
                onTap: () {},
              ),
              _buildProfileSection(
                icon: Icons.help,
                title: 'Help & Support',
                onTap: () {},
              ),
              _buildProfileSection(
                icon: Icons.logout,
                title: 'Logout',
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
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
                              content: Text(
                                  'Failed to select image: ${e.toString()}'),
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
}
