import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/meal_item.dart';
import 'package:foodu/features/explore/presentation/model/meal_ui.dart';

class MyFavoriteRestaurantBody extends StatelessWidget {
  const MyFavoriteRestaurantBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          itemCount: 17,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: MealItem(
                meal: MealUi(
                    id: 'w',
                    name: 'The BreakFast Club ',
                    imageUrl: '',
                    rating: 2.2,
                    isFavorite: true,
                    distance: '1.4 km',
                    deliveryCost: 2.50,
                    numberOfUpvote: 47,
                    categoryId: 'categoryId'
                ),
              ),
            );
          }
      ),
    );
  }
}
