

import 'package:get/get.dart';

import 'manger/meal_controller.dart';

class MealBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MealController()..getMealDetails(), fenix: true);
  }

}