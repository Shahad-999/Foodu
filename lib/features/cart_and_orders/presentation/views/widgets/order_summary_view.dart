import 'package:flutter/material.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/order_summary_ui.dart';

import 'order_summary_item_view.dart';

class OrderSummaryView extends StatelessWidget {
  const OrderSummaryView({Key? key, required this.orders}) : super(key: key);
  final List<OrderMealUi> orders;
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
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Order Summary',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Divider(
              thickness: 1.5,
            ),
            const SizedBox(height: 8),
            ListView.separated(
                itemCount: orders.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Divider(),
                  );
                },
                itemBuilder: (context, index) {
                  return OrderMealItemView(mealOrder: orders[index]);
                })
          ],
        ),
      ),
    );
  }
}


