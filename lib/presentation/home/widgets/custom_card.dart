import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';

class CustomCard extends StatelessWidget {
  final Item item;
  const CustomCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withOpacity(0.08),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Image.network(
        item.images[0],
        fit: BoxFit.cover,
        // width: double.infinity,
        // height: double.infinity,
      ),
    );
  }
}
