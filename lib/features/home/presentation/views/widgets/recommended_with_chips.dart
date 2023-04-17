import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/meal_item.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';
import '../../../../../core/widgets/categories_chip_list.dart';
import '../../manger/recommended_controller.dart';

class RecommendedWithChips extends StatelessWidget {
  RecommendedWithChips({Key? key}) : super(key: key);

  final RecommendedController _recommendedController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
            height: 50.h,
            child: const CategoriesChipList()
        ),
        Obx(()=> ListView.builder(
              itemCount: _recommendedController.recommendedMeals.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                return MealItem(meal: _recommendedController.recommendedMeals[index]);
              }
          ),
        )
      ],
    );
  }
}
