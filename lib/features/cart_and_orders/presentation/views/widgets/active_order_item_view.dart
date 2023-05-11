import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/general_order_details_item.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/order_actions_buttons.dart';
import 'package:get/get.dart';

class ActiveOrderItemView extends StatelessWidget {
  const ActiveOrderItemView({Key? key}) : super(key: key);

  onClickCancelOrder(){
    Get.toNamed(
        Routes.cancelOrderRoute,
      arguments: {
          Arguments.orderId : 'orderId'
      }
    );
  }

  onClickTrackDriver(){
    Get.toNamed(
        Routes.trackDriverRoute,
      arguments: {
          Arguments.orderId : 'orderId'
      }
    );
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
            const GeneralOrderDetailsItem(labelText: 'Paid'),
            const Divider(thickness: 1).marginSymmetric(vertical: 8),
            OrderActionButtons(
                focusButtonText: 'Track Driver',
                unFocusButtonText: 'Cancel Order',
              onClickFocusButton: onClickTrackDriver,
              onClickUnFocusButton: onClickCancelOrder,
            ),
          ],
        ),
      ),
    );
  }
}
