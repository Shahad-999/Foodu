import 'package:flutter/cupertino.dart';
import 'package:foodu/core/widgets/meal_item.dart';
import 'package:foodu/features/explore/presentation/controllers/recommended_controller.dart';
import 'package:get/get.dart';


class RecommendedBody extends StatelessWidget {
  const RecommendedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView(children: [
          // const SizedBox(height: 50, child: CategoriesChipList()),
          GetBuilder<RecommendedController>(
            builder: (controller) {
              return ListView.builder(
                  itemCount: controller.recommendedMeals.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MealItem(meal: controller.recommendedMeals[index]);
                  });
            },
          )
        ]));
  }
}
