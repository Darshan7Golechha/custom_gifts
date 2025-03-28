import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SellerModeToggle extends StatefulWidget {
  const SellerModeToggle({super.key});

  @override
  State<SellerModeToggle> createState() => _SellerModeToggleState();
}

class _SellerModeToggleState extends State<SellerModeToggle> {
  bool isSellerMode = false;

  @override
  void initState() {
    super.initState();
    _loadSellerMode();
  }

  Future<void> _loadSellerMode() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isSellerMode = prefs.getBool('isSellerMode') ?? false;
    });
  }

  Future<void> _saveSellerMode(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSellerMode', value);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.store, color: Colors.grey),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Seller Mode',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Switch to seller dashboard',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Switch.adaptive(
            value: isSellerMode,
            activeColor: Theme.of(context).primaryColor,
            onChanged: (value) {
              setState(() {
                isSellerMode = value;
              });
              _saveSellerMode(value); // Save the state
              context
                  .read<UserBloc>()
                  .add(UserEvent.updateSellerMode(isSeller: value));
            },
          ),
        ],
      ),
    );
  }
}
