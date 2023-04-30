import 'package:flutter/cupertino.dart';
import 'package:size_config/size_config.dart';

import '../../explore/presentation/views/widgets/categories_section.dart';


class CategoriesBody extends StatelessWidget {
   const CategoriesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child:   CategoriesSection(),
    );
  }
}
