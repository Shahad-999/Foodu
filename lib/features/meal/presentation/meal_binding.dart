

import 'package:foodu/features/meal/presentation/controllers/meal_controller.dart';
import 'package:get/get.dart';


class MealBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MealController()..getMealDetails(), fenix: true);
  }

}