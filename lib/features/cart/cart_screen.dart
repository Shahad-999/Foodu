import 'package:flutter/material.dart';
import 'package:foodu/features/cart/widgets/cart_body.dart';
import 'package:foodu/core/widgets/navigation_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const NavigationAppBar(title: 'My cart'),
      body: const CartBody(),
    );
  }
}
