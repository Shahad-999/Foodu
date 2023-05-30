import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../model/discount_meal_ui.dart';

class DiscountItem extends StatelessWidget {
  const DiscountItem({Key? key, required this.meal}) : super(key: key);
  final DiscountMealUi meal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 190,
                width: 190,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 190,
                      width: 190,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: CachedNetworkImage(
                            imageUrl: meal.imageUrl,
                          )),
                    ),
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Container(
                        width: 56,
                        height: 24,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(4)),
                        child: const Center(
                          child: Text(
                            'PROMO',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                meal.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 8),
              const Spacer(),
              Row(
                children: [
                  Text(
                    '\$${meal.price}',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                  VerticalDivider(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  Icon(
                    Icons.delivery_dining_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '\$${meal.deliveryCost}',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
