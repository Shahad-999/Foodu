import 'package:flutter/cupertino.dart';

import 'categories_section.dart';


class CategoriesBody extends StatelessWidget {
   const CategoriesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 16),
      child:   CategoriesSection(),
    );
  }
}
