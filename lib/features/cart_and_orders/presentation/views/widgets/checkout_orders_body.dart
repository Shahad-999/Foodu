import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/app_button.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/deliver_to_view.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/order_summary_view.dart';
import 'package:get/get.dart';

import 'cost_view.dart';

class CheckoutOrdersBody extends StatelessWidget {
  const CheckoutOrdersBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 24,
          left: 24,
          top: 0,
          bottom: 0,
          child: ListView(
            padding: const EdgeInsets.only(bottom: 100,top: 24),
            children: const [
              DeliverToView(),
              SizedBox(height: 24),
              OrderSummaryView(),
              SizedBox(height: 24),
              CostView()
            ],
          ),
        ),
        Positioned(
            right: 16,
            left: 16,
            bottom: 0,
            child: AppButton(
              buttonText: 'Place order',
              onTap: () {},
            ).marginOnly(bottom: 40)
        ),
      ],
    );
  }
}
