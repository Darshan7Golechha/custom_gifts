import 'package:flutter/material.dart';
import 'package:flutter_application_1/application/auth/auth_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class ProfileContent extends StatefulWidget {
  const ProfileContent({super.key});

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
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

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Profile Picture
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(user.photoURL.isNotEmpty
                      ? user.photoURL
                      : 'https://via.placeholder.com/150'),
                  backgroundColor: Colors.transparent,
                  child: user.photoURL.isEmpty
                      ? const Icon(Icons.person, size: 50)
                      : null,
                ),
              ),
              const SizedBox(height: 16),
              // User Name
              Text(
                user.fullName.isNotEmpty ? user.fullName : 'John Doe',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              // User Email
              Text(
                user.email.isNotEmpty ? user.email : 'john.doe@example.com',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
              const SizedBox(height: 24),
              // Profile Sections
              _buildProfileSection(
                context: context,
                icon: Icons.shopping_bag_outlined,
                title: 'Orders',
                onTap: () {},
              ),
              _buildProfileSection(
                context: context,
                icon: Icons.favorite_border,
                title: 'Wishlist',
                onTap: () {},
              ),
              _buildProfileSection(
                context: context,
                icon: Icons.settings_outlined,
                title: 'Settings',
                onTap: () {},
              ),
              _buildProfileSection(
                context: context,
                icon: Icons.help_outline,
                title: 'Help & Support',
                onTap: () {},
              ),
              _buildProfileSection(
                context: context,
                icon: Icons.logout,
                title: 'Logout',
                onTap: () {
                  // TODO: Implement logout functionality
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildProfileSection({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios,
            size: 16, color: Theme.of(context).colorScheme.onSurfaceVariant),
        onTap: onTap,
      ),
    );
  }
}
