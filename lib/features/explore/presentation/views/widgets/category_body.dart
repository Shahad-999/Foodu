import 'package:flutter/cupertino.dart';
import 'package:foodu/features/explore/presentation/controllers/category_controller.dart';
import 'package:foodu/features/explore/presentation/views/widgets/state.dart';
import 'package:get/get.dart';

import '../../../../../core/widgets/meal_item.dart';


class CategoryBody extends StatelessWidget {
  CategoryBody({Key? key}) : super(key: key);
  final CategoryController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Obx(
              () => StateHandler(
              state: _controller.meals.value,
              onLoaded: (items) => ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return MealItem(
                        meal: items[index]);
                  })),
        ));
  }
}
