import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:go_router/go_router.dart';

class CustomItemGrid extends StatelessWidget {
  final Item item;
  const CustomItemGrid({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Header
          ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            leading: CircleAvatar(
              radius: 16,
              backgroundColor: colorScheme.primaryContainer,
              backgroundImage: NetworkImage(item.user.photoURL),
            ),
            title: Text(
              item.user.fullName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: colorScheme.onSurface,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),

          // Image Section
          GestureDetector(
            onTap: () => context.go(Uri(
              path: AppRouter.itemDetail,
              queryParameters: {
                'itemID': item.itemID,
              },
            ).toString()),
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: item.images.isNotEmpty
                  ? Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          item.images[0],
                          fit: BoxFit.cover,
                          loadingBuilder: (_, child, loadingProgress) {
                            return loadingProgress == null
                                ? child
                                : _buildShimmerEffect(colorScheme);
                          },
                        ),
                        Positioned(
                          bottom: 12,
                          left: 12,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '\$${item.price}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : _buildPlaceholder(colorScheme),
            ),
          ),

          // Action Buttons
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
                visualDensity: VisualDensity.compact,
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {},
                visualDensity: VisualDensity.compact,
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {},
                visualDensity: VisualDensity.compact,
              ),
            ],
          ),

          // Title and Description
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                if (item.description.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    item.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: colorScheme.onSurfaceVariant,
                      fontSize: 14,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShimmerEffect(ColorScheme colorScheme) => Container(
        color: colorScheme.surfaceContainerHighest.withOpacity(0.3),
        child: Center(
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation(colorScheme.primary),
          ),
        ),
      );

  Widget _buildPlaceholder(ColorScheme colorScheme) => Container(
        color: colorScheme.surfaceContainerHighest.withOpacity(0.3),
        child: Icon(
          Icons.image_outlined,
          size: 48,
          color: colorScheme.outline,
        ),
      );
}
