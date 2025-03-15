import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/item/widgets/custom_item_grid.dart';
import 'package:flutter_application_1/presentation/search/widgets/filter_bottom_sheet.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for custom gifts...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () => _showFilterSheet(context),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          _buildCategories(),
          _buildPopularSearches(),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return SliverToBoxAdapter(
      child: Container(
        height: 120,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.category),
                  SizedBox(height: 8),
                  Text('Category'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPopularSearches() {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Popular Searches',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildSearchChip('Custom Mugs'),
                _buildSearchChip('Personalized Cards'),
                _buildSearchChip('Photo Frames'),
                _buildSearchChip('Custom T-shirts'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchChip(String label) {
    return ActionChip(
      label: Text(label),
      onPressed: () {},
    );
  }

  // Widget _buildSearchResults() {
  //   return SliverPadding(
  //     padding: const EdgeInsets.all(16),
  //     sliver: SliverGrid(
  //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 2,
  //         childAspectRatio: 0.75,
  //         mainAxisSpacing: 16,
  //         crossAxisSpacing: 16,
  //       ),
  //       delegate: SliverChildBuilderDelegate(
  //         (context, index) => CustomItemGrid(),
  //         childCount: 10,
  //       ),
  //     ),
  //   );
  // }

  void _showFilterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const FilterBottomSheet(),
    );
  }
}
