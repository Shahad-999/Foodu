import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:size_config/size_config.dart';

import '../config/routes.dart';
import '../../features/explore/presentation/model/category_ui.dart';


class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.category})
      : super(key: key);
  final CategoryUi category;

  _onTapCategory(String id, String title) {
    Get.toNamed(Routes.categoryDetailsRoute,
        arguments: {Arguments.categoryTitle: title, Arguments.categoryId: id});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: GestureDetector(
        onTap: (){
          _onTapCategory(category.id,category.name);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 64, width: 64, child: Image.network(category.imageUrl)),
            SizedBox(height: 8.h),
            Text(
              category.name,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
