import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/order_summary_ui.dart';

class OrderMealItemView extends StatelessWidget {
  const OrderMealItemView({Key? key, required this.mealOrder})
      : super(key: key);

  final OrderMealUi mealOrder;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: mealOrder.imageUrl,
              )),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mealOrder.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                maxLines: 1,
              ),
              const SizedBox(height: 10),
              Text(
                mealOrder.price,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),
        ),
        const SizedBox(width: 16),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    mealOrder.quantity,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w900),
                  ),
                )),
            // SizedBox(
            //     height: 32,
            //     width: 32,
            //     child: Center(
            //         child: Icon(
            //           Icons.edit,
            //           color: Theme.of(context).colorScheme.primary,
            //           size: 16,
            //         )))
          ],
        )
      ],
    );
  }
}
