import 'package:flutter/material.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/orders_app_bar.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/orders_body.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: const OrdersAppBar(),
        body: const OrdersBody(),
      ),
    );
  }
}
