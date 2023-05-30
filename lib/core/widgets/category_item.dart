import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/explore/presentation/model/category_ui.dart';
import '../config/routes.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.category}) : super(key: key);
  final CategoryUi category;

  _onTapCategory(String id, String title) {
    Get.toNamed(Routes.categoryDetailsRoute,
        arguments: {Arguments.categoryTitle: title, Arguments.categoryId: id});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _onTapCategory(category.id, category.name);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 64,
              width: 64,
              child: CachedNetworkImage(
                imageUrl: category.imageUrl,
                 )),
          const SizedBox(height: 8),
          Text(
            category.name,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
