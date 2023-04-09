import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:size_config/size_config.dart';

import '../../../config/routes.dart';
import '../../widgets/categories_section.dart';


class CategoriesBody extends StatelessWidget {
   const CategoriesBody({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child:  CategoriesSection(
        onTapItem: (id,title){
          GoRouter.of(context).push(AppRouter.categoryDetailsParam(id,title));
        },
      ),
    );
  }
}
