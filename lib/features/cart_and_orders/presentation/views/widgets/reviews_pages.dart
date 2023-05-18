import 'package:flutter/cupertino.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/driver_review_page.dart';

import 'order_review_page.dart';
import 'restaurant_review_page.dart';

class ReviewsPages extends StatelessWidget {
  const ReviewsPages({Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children:  [
        OrderReviewPage(),
        DriverReviewPage(),
        RestaurantReviewPage(),
      ],
    );
  }
}
