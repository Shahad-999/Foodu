import 'package:flutter/material.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/active_order_item_view.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/cancelled_order_item_view.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/completed_order_item_view.dart';
import 'package:get/get.dart';

class OrdersBody extends StatelessWidget {
  const OrdersBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return const ActiveOrderItemView()
                .marginSymmetric(vertical: 8, horizontal: 24);
          }),
      ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return const CompletedOrderItemView()
                .marginSymmetric(vertical: 8, horizontal: 24);
          }),
      ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return const CancelledOrderItemView()
                .marginSymmetric(vertical: 8, horizontal: 24);
          }),
    ]);
  }
}
