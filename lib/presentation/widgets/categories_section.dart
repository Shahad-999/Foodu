import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';
import '../home/model/category_ui.dart';
import 'category_item.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection(
      {Key? key,
      this.onTapMore,
      required this.categories,
      this.numberOfCategories})
      : super(key: key);

  final VoidCallback? onTapMore;
  final List<CategoryUi> categories;
  final int? numberOfCategories;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
        child: GridView.builder(
            itemCount: numberOfCategories ?? categories.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CategoryItem(category: categories[index]);
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.8))
        )
    );
  }
}
