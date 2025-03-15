import 'package:flutter/material.dart';
import 'widgets/seller_mode_toggle.dart';
import 'widgets/profile_content.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: const Column(
        children: [
          SellerModeToggle(),
          Divider(),
          Expanded(
            child: ProfileContent(),
          ),
        ],
      ),
    );
  }
}