import 'package:flutter/material.dart';
import 'package:flutter_application_1/application/item/item_bloc.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/presentation/vendor/widgets/add_item_dailog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddEditItem extends StatefulWidget {
  final String itemID;

  const AddEditItem({
    super.key,
    this.itemID = '',
  });

  @override
  State<AddEditItem> createState() => _AddEditItemState();
}

class _AddEditItemState extends State<AddEditItem> {
  @override
  void initState() {
    if (widget.itemID.isNotEmpty) {
      context.read<ItemBloc>().add(ItemEvent.fetchItem(itemID: widget.itemID));
    } else {
      context.read<ItemBloc>().add(const ItemEvent.initialized());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemBloc, ItemState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.item != current.item,
      builder: (context, state) {
        return state.isLoading
            ? const Center(child: CircularProgressIndicator())
            : _AddItemMobile(
                item: widget.itemID.isNotEmpty ? state.item : Item.empty());
      },
    );
  }
}

class _AddItemMobile extends StatelessWidget {
  final Item item;

  const _AddItemMobile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(),
      body: AddItemDialogContent(
        item: item == Item.empty() ? null : item,
        isEditing: item != Item.empty(),
      ),
    );
  }
}
