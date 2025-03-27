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

        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(user.photoURL.isNotEmpty
                    ? user.photoURL
                    : 'https://example.com/default-avatar.jpg'),
                child: user.photoURL.isEmpty
                    ? const Icon(Icons.person, size: 50)
                    : null,
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
