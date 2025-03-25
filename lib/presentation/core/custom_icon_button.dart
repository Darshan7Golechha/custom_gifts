import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onTap;

  const CustomIconButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.zero,
        color: const Color(0xffFFD7F3),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: const Color(0xffE85DBE),
                child: icon,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
