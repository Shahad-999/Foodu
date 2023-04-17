import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodu/features/mealDetails/widgets/meal_details_body.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({Key? key}) : super(key: key);

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
