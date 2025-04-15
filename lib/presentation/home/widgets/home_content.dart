part of '../home.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  void initState() {
    context.read<ItemBloc>().add(const ItemEvent.fetchItems());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        scrolledUnderElevation: 4,
        backgroundColor: colorScheme.surface,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Custom Gifts',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
            Text(
              'Find unique handcrafted items',
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search gifts...',
                        prefixIcon: Icon(Icons.search,
                            color: colorScheme.onSurfaceVariant),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.filter_list,
                        color: colorScheme.onSurfaceVariant),
                    onPressed: () {
                      // TODO: Implement filter functionality
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SearchChips(label: 'Custom Mugs'),
                    const SizedBox(width: 8),
                    SearchChips(label: 'Personalized Cards'),
                    const SizedBox(width: 8),
                    SearchChips(label: 'Photo Frames'),
                    const SizedBox(width: 8),
                    SearchChips(label: 'Custom T-shirts'),
                    const SizedBox(width: 8),
                    SearchChips(label: 'Phone Cases'),
                    const SizedBox(width: 8),
                    SearchChips(label: 'Wall Art'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              ItemList(),
              const SizedBox(height: 24),
              VendorList(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
