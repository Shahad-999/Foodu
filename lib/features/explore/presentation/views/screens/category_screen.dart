import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/navigation_bar.dart';
import 'package:foodu/features/explore/presentation/controllers/category_controller.dart';
import 'package:foodu/features/explore/presentation/views/widgets/category_body.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);

  final CategoryController _controller = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar:  NavigationAppBar(title: _controller.categoryTitle),
      body: CategoryBody(),
    );
  }
}
