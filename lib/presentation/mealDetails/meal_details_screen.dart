import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodu/presentation/mealDetails/widgets/meal_details_body.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({Key? key, required this.mealId}) : super(key: key);
  final String mealId;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: const AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          child: MealDetailsBody()),
    );
  }
}
