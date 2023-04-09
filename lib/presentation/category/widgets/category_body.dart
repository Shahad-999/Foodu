import 'package:flutter/cupertino.dart';
import 'package:foodu/presentation/widgets/meal_item.dart';
import 'package:size_config/size_config.dart';


class CategoryBody extends StatelessWidget {
  const CategoryBody({Key? key}) : super(key: key);

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
