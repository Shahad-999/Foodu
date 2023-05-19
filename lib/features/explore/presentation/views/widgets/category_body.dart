import 'package:flutter/cupertino.dart';


class CategoryBody extends StatelessWidget {
  const CategoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: 15,
          itemBuilder: (context,index){
            return Text('dd'); //todo later MealItem(meal: MealUi())
          }
      ),
    );
  }
}
