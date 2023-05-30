import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:foodu/features/restaurant_and_food/presentation/models/menu_ui.dart';
import 'package:get/get.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () => _navToMealDetails(meal.id),
        child: Container(
          height: 128,
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
                        child: CachedNetworkImage(
                          imageUrl: meal.imageUrl,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      meal.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      meal.price,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
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
