import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:get/get.dart';

import '../../features/explore/presentation/model/meal_ui.dart';

class MealItem extends StatelessWidget {
  const MealItem({Key? key, required this.meal}) : super(key: key);
  final MealUi meal;

  _navToMealDetails() {
    Get.toNamed(Routes.mealRoute, arguments: {Arguments.mealId: meal.id});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Theme.of(context).colorScheme.secondary
        ),
        child: GestureDetector(
          onTap: _navToMealDetails,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(meal.imageUrl)
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Text(
                        meal.name,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w800
                        ),
                        maxLines: 1,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '${meal.distance} - ${meal.rating} (${meal.numberOfUpvote}k)',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delivery_dining_rounded,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '\$2.00',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 14
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Spacer(),
                          const Icon(
                            Icons.favorite_border,
                            color: Color(0xFFFF0025),
                            size: 24,
                          ),
                          const SizedBox(width: 8),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
