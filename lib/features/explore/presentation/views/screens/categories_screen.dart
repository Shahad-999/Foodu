import 'package:flutter/material.dart';
import 'package:foodu/features/explore/presentation/views/widgets/categories_body.dart';

import '../../../../../core/widgets/navigation_bar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: const NavigationAppBar(title: 'More Categories'),
      body:  const CategoriesBody(),
    );
  }
}
