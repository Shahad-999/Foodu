import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/cart_item_ui.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.item}) : super(key: key);

  final CartItemUi item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Dismissible(
        direction: DismissDirection.endToStart,
        key: const ValueKey('value'),
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.red,
          ),
          child: Stack(
            children: const [
              Positioned(
                right: 24,
                top: 0,
                bottom: 0,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        onDismissed: (direction) {},
        child: Container(
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Theme.of(context).colorScheme.secondary),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                        imageUrl: item.imageUrl,
                      )),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      item.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${item.distance} - ${item.rating} (${item.numberOfUpvote})',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontWeight: FontWeight.w600, fontSize: 14),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item.price,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
