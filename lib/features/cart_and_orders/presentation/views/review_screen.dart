import 'package:flutter/material.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/review_body.dart';

import '../../../../core/widgets/navigation_bar.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: const NavigationAppBar(),
      body: const ReviewBody(),
    );
  }
}
