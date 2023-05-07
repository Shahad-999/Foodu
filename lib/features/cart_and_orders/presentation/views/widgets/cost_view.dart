import 'package:flutter/material.dart';

class CostView extends StatelessWidget {
  const CostView(
      {Key? key,
      required this.subtotal,
      required this.total,
      required this.deliveryFee})
      : super(key: key);

  final String subtotal;
  final String total;
  final String deliveryFee;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Subtotal',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                const Spacer(),
                Text(
                  subtotal,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  'Delivery Fee',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                const Spacer(),
                Text(
                  deliveryFee,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(
              thickness: 1.2,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  'Total',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                const Spacer(),
                Text(
                  total,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
