import 'package:flutter/cupertino.dart';
import 'package:foodu/features/home/presentation/manger/recommended_controller.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/widgets/categories_chip_list.dart';
import '../../../../../core/widgets/meal_item.dart';

class RecommendedBody extends StatelessWidget {
  const RecommendedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: ListView(children: [
          SizedBox(height: 50.h, child: const CategoriesChipList()),
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
