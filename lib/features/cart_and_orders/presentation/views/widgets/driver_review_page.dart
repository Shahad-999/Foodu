import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/order_review_controller.dart';
import 'package:get/get.dart';

class DriverReviewPage extends StatelessWidget {
  DriverReviewPage({Key? key}) : super(key: key);
  final OrderReviewController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/images/logo_foodu.png'),
          ),
          const SizedBox(height: 16),
          Text(
            'Lets rate your drivers delivery service',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 26,
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'How was the delivery of your order from big garden salad ?',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          RatingBar.builder(
              initialRating: 3,
              minRating: 0.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                    Icons.star_rounded,
                    color: Color(0xFFFEA01D),
                  ),
              itemSize: 48,
              onRatingUpdate: (rating) {
                _controller.onDriverRatingUpdate(rating);
              }),
        ],
      ),
    );
  }
}
