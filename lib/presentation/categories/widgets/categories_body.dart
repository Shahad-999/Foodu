import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../../config/routes.dart';
import '../../widgets/categories_section.dart';


class CategoriesBody extends StatelessWidget {
   const CategoriesBody({Key? key}) : super(key: key);

   _onTapCategory(String id , String title){
     Get.toNamed(
         Routes.categoryDetailsRoute,
         arguments: {
           Arguments.categoryTitle : title,
           Arguments.categoryId : id
         }
     );
   }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child:  CategoriesSection(
        onTapItem: _onTapCategory,
      ),
    );
  }
}
