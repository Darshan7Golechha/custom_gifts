part of '../item_detail.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            tabs: const [
              Tab(text: 'Description'),
              Tab(text: 'Specifications'),
              Tab(text: 'Reviews'),
            ],
            labelColor: colorScheme.primary,
            unselectedLabelColor: Colors.grey,
            indicatorColor: colorScheme.primary,
            dividerColor: Colors.transparent,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 400,
            child: TabBarView(
              children: [
                // Description tab
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                  'nisi ut aliquip ex ea commodo consequat.\n\n'
                  'Duis aute irure dolor in reprehenderit in voluptate velit esse '
                  'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat '
                  'cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey[800],
                        height: 1.5,
                      ),
                ),

                // Specifications tab
                ListView(
                  children: [
                    ItemSpecification(label: 'Brand', value: 'Nike'),
                    ItemSpecification(label: 'Color', value: 'Black/White'),
                    ItemSpecification(label: 'Material', value: 'Leather'),
                    ItemSpecification(label: 'SKU', value: 'NKE-12345-BW'),
                    ItemSpecification(label: 'Weight', value: '300g'),
                  ],
                ),

                // Reviews tab
                ListView(
                  children: [
                    ItemReview(
                      name: 'Sarah Johnson',
                      rating: 5,
                      comment:
                          'Great product! Exactly as described and arrived quickly.',
                      timeAgo: '2 days ago',
                    ),
                    ItemReview(
                      name: 'Michael Thomas',
                      rating: 4,
                      comment:
                          'Very good quality but slightly smaller than expected.',
                      timeAgo: '1 week ago',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
