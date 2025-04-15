import 'package:flutter/material.dart';
import 'package:flutter_application_1/application/item/item_bloc.dart';
import 'package:flutter_application_1/presentation/item/widgets/custom_item_grid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemBloc, ItemState>(
        buildWhen: (p, c) =>
            (p.itemList != c.itemList) ||
            (p.isLoading != c.isLoading &&
                p.itemList.isEmpty), // Only show loading on first load
        builder: (context, state) {
          if (state.isLoading && state.itemList.isEmpty) {
            // Show loading only if no items
            return const Center(child: CircularProgressIndicator());
          }

          if (!state.isLoading && state.itemList.isEmpty) {
            return const Center(child: Text('No items found'));
          }
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Trending',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.itemList.length,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (_, index) =>
                    CustomItemGrid(item: state.itemList[index]),
              ),
            ],
          );
        });
  }
}
