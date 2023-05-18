import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/order_ui.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/general_order_details_item.dart';
import 'package:get/get.dart';

import 'order_actions_buttons.dart';

class CompletedOrderItemView extends StatelessWidget {
  const CompletedOrderItemView({Key? key, required this.order})
      : super(key: key);
  final OrderUi order;

  onClickLeaveReview() {
    Get.toNamed(Routes.reviewRoute, arguments: {Arguments.orderId: order.id});
  }

  onCLickOrderAgain() {
    Get.toNamed(Routes.checkoutOrdersRoute,
        arguments: {Arguments.orderId: order.id});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Theme.of(context).colorScheme.secondary),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GeneralOrderDetailsItem(labelText: 'Completed', order: order),
            const Divider(thickness: 1).marginSymmetric(vertical: 8),
            OrderActionButtons(
              focusButtonText: 'Order Again',
              unFocusButtonText: 'Leave a Review',
              onClickFocusButton: onCLickOrderAgain,
              onClickUnFocusButton: onClickLeaveReview,
            ),
          ],
        ),
      ),
    );
  }
}
