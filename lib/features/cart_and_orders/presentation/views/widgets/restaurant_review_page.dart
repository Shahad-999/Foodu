import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RestaurantReviewPage extends StatelessWidget {
  const RestaurantReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24)
            ),
            child: Image.asset('assets/images/logo_foodu.png'),
          ),
          const SizedBox(height: 16),
          Text(
            'How was the delivery of your order from Big Garden Salad ?',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 26,
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'Enjoyed your food ? Rate the restaurant your feed back is matters',
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
              // print(rating);
            },
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
