import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:foodu/core/widgets/categories_chip_list.dart';
import 'package:foodu/core/widgets/meal_item.dart';
import 'package:foodu/features/explore/presentation/controllers/recommended_controller.dart';
import 'package:get/get.dart';

import 'header_section.dart';

class RecommendedSection extends StatelessWidget {
  RecommendedSection({super.key});

  final RecommendedController _recommendedController = Get.find();

  _onClickSeeAll() {
    Get.toNamed(
      Routes.recommendedRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderSection(
            headerTitle: 'Recommended For You 👌',
            onClickSeeAll: _onClickSeeAll),
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            const SizedBox(height: 50, child: CategoriesChipList()),
            Obx(
              () => ListView.builder(
                  itemCount: _recommendedController.recommendedMeals.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MealItem(
                        meal: _recommendedController.recommendedMeals[index]);
                  }),
            )
          ],
        )
      ],
    );
  }
}
