import 'package:flutter/cupertino.dart';
import 'package:size_config/size_config.dart';


class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context,index){
            return Text('dd'); //todo later MealItem(meal: MealUi())
          }
      ),
    );
  }
}
