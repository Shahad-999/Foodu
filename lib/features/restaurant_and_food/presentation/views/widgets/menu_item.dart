import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:foodu/features/restaurant_and_food/presentation/models/menu_ui.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/constant.dart';


class MenuItem extends StatelessWidget {
  const MenuItem({Key? key, required this.meal}) : super(key: key);
  final MealUi meal;
  _navToMealDetails(String mealId) {
    Get.toNamed(Routes.mealRoute, arguments: {Arguments.mealId: mealId});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: GestureDetector(
        onTap: () => _navToMealDetails(meal.id),
        child: Container(
          height: 128.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Theme.of(context).colorScheme.secondary),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Hero(
                  tag: imageTag(meal.id),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(meal.imageUrl)),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      meal.name,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 20.sp, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      meal.price,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w900,
                          fontSize: 20.sp,
                          decoration: TextDecoration.none),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
