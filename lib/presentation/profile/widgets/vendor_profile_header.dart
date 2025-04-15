import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/application/auth/auth_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class VendorProfileHeader extends StatelessWidget {
  final String userID;

  const VendorProfileHeader({
    super.key,
    required this.userID,
  });

  @override
  Widget build(BuildContext context) {
    String myUserID = context.read<AuthBloc>().state.currentUser.userID;
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cover image
            Stack(
              clipBehavior: Clip.none, // Allow widgets to overflow
              children: [
                Image.network(
                  state.user.photoURL, height: 200, // Increased from 200
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 200, // Increased from 200
                    color: Colors.grey[300],
                    child: const Center(
                        child:
                            Icon(Icons.error, size: 48)), // Increased icon size
                  ),
                ),
                Positioned(
                  bottom: -25, // Adjusted overlap
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10), // Increased padding
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(24), // Increased radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star,
                            color: Colors.amber,
                            size: 24), // Increased icon size
                        const SizedBox(width: 6),
                        Text(
                          '4.5',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    // Increased text size
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Vendor info
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          state.user.fullName, // Updated vendor name
                          style: Theme.of(context).textTheme.headlineSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    state.user.about,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      if (state.user.userID != myUserID)
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {
                              String chatUserID = state.user.userID;
                              String conversationID =
                                  ([myUserID, chatUserID]..sort()).join('|');
                              context.go(Uri(
                                path: AppRouter.conversation,
                                queryParameters: {
                                  'userID': chatUserID,
                                  'conversationID': conversationID,
                                },
                              ).toString());
                            },
                            icon: const Icon(Icons.phone, size: 20),
                            label: const Text('Contact'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Theme.of(context).primaryColor,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 2,
                              shadowColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.3),
                            ),
                          ),
                        ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 20,
                          ),
                          label: const Text('Follow'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Theme.of(context).primaryColor,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            side: BorderSide(
                              color: Colors.black,
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
