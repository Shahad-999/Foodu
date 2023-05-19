import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/category_item.dart';
import 'package:foodu/features/explore/presentation/controllers/categories_controller.dart';
import 'package:get/get.dart';


class CategoriesSection extends StatelessWidget {
   CategoriesSection(
      {Key? key,
      this.onTapMore,
      this.numberOfCategories})
      : super(key: key);

  final VoidCallback? onTapMore;
  final int? numberOfCategories;
  final CategoriesController _categoriesController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Obx(() => GridView.builder(
              itemCount: _categoriesController.categories.isEmpty ? 0 : numberOfCategories ?? _categoriesController.categories.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CategoryItem(category: _categoriesController.categories[index]);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1/1.2)
          ),
        )
    );
  }
}
