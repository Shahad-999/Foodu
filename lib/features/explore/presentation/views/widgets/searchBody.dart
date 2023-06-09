import 'package:flutter/cupertino.dart';
import 'package:foodu/core/widgets/meal_item.dart';
import 'package:foodu/features/explore/presentation/controllers/search_controller.dart';
import 'package:foodu/features/explore/presentation/views/widgets/state.dart';
import 'package:get/get.dart';


class SearchBody extends StatelessWidget {
  SearchBody({Key? key}) : super(key: key);
  final SearchController _controller = Get.find();

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
