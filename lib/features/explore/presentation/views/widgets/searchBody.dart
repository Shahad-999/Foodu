import 'package:flutter/cupertino.dart';
import 'package:foodu/features/explore/presentation/views/widgets/state.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/widgets/meal_item.dart';
import '../../manger/search_controller.dart';

class SearchBody extends StatelessWidget {
  SearchBody({Key? key}) : super(key: key);
  final SearchController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
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
