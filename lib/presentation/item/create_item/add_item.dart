import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/item/create_item/widgets/add_edit_item.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return const AddEditItem();
  }
}
