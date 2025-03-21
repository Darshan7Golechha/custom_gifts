import 'package:flutter/material.dart';

void showSnackBar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(seconds: 5),
      dismissDirection: DismissDirection.vertical,
      // backgroundColor: UIConstants.primary,
    ),
  );
}
