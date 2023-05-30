import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/order_ui.dart';
import 'package:get/get.dart';

class GeneralOrderDetailsItem extends StatelessWidget {
  const GeneralOrderDetailsItem(
      {Key? key,
      this.labelDecoration,
      required this.labelText,
      this.labelColor,
      required this.order})
      : super(key: key);

  final Decoration? labelDecoration;
  final String labelText;
  final Color? labelColor;
  final OrderUi order;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: SizedBox(
                height: 120,
                width: 120,
                child: CachedNetworkImage(
                  imageUrl: order.imageUrl,
                ))),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              order.mealName,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 12),
            Text(
              '${order.quantity} - ${order.distance}',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.w500, fontSize: 14),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  order.price,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
                const SizedBox(width: 16),
                Container(
                    decoration: labelDecoration ??
                        BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(labelText,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: labelColor ?? Colors.white))
                          .marginSymmetric(horizontal: 8, vertical: 6),
                    )),
              ],
            )
          ],
        )
      ],
    );
  }
}
