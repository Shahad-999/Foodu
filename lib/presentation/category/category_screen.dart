import 'package:flutter/material.dart';
import 'package:foodu/presentation/category/widgets/category_body.dart';
import 'package:foodu/presentation/widgets/navigation_bar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar:  const NavigationAppBar(title: 'anyThing'), //TODO PASS Title HERE FROM CONTROLLER
      body: const CategoryBody(),
    );
  }
}
