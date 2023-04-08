import 'package:flutter/material.dart';
import 'package:foodu/presentation/cart/widgets/cart_body.dart';
import 'package:foodu/presentation/widgets/navigation_bar.dart';

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
