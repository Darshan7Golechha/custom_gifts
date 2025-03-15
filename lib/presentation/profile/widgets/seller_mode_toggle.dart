import 'package:flutter/material.dart';

class SellerModeToggle extends StatefulWidget {
  const SellerModeToggle({Key? key}) : super(key: key);

  @override
  State<SellerModeToggle> createState() => _SellerModeToggleState();
}

class _SellerModeToggleState extends State<SellerModeToggle> {
  bool isSellerMode = false;

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
            },
          ),
        ],
      ),
    );
  }
}