import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';
import '../home/controller/categories_controller.dart';
import 'category_item.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
        child: Obx(() => GridView.builder(
              itemCount: _categoriesController.categories.isEmpty ? 0 : numberOfCategories ?? _categoriesController.categories.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CategoryItem(category: _categoriesController.categories[index]);
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.8))
          ),
        )
    );
  }
}
