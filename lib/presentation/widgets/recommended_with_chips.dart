import 'package:flutter/material.dart';
import 'package:foodu/presentation/widgets/meal_item.dart';
import 'package:size_config/size_config.dart';

import 'categories_chip_list.dart';

class RecommendedWithChips extends StatelessWidget {
  const RecommendedWithChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 50.h,
            child: const CategoriesChipList()
        ),
        ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context,index){
              return const MealItem();
            }
        )
      ],
    );
  }
}
