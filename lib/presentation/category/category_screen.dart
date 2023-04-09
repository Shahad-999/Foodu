import 'package:flutter/material.dart';
import 'package:foodu/presentation/category/widgets/category_body.dart';
import 'package:foodu/presentation/widgets/navigation_bar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key, required this.categoryTitle, required this.categoryId}) : super(key: key);

  final String categoryTitle;
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar:  NavigationAppBar(title: categoryTitle),
      body: const CategoryBody(),
    );
  }
}
