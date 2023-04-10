import 'package:flutter/cupertino.dart';
import 'package:size_config/size_config.dart';

import '../../widgets/meal_item.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context,index){
            return const MealItem();
          }
      ),
    );
  }
}
