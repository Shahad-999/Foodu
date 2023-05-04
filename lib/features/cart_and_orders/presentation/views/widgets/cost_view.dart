import 'package:flutter/material.dart';

class CostView extends StatelessWidget {
  const CostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),
                ),
                const Spacer(),
                Text(
                    '\$24.00',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  'Delivery Fee',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),
                ),
                const Spacer(),
                Text(
                  '\$2.00',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(thickness: 1.2,),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  'Total',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),
                ),
                const Spacer(),
                Text(
                  '\$26.00',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );

  }
}
