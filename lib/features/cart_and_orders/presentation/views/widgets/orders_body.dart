import 'package:flutter/material.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/cancelled_order_page.dart';


import 'active_order_page.dart';
import 'completed_order_page.dart';

class OrdersBody extends StatelessWidget {
  const OrdersBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ActiveOrderPage(),
      CompletedOrderPage(),
      CancelledOrderPage(),
    ]);
  }
}
