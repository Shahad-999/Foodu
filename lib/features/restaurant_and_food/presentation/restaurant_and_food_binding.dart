

import 'package:foodu/features/restaurant_and_food/presentation/manger/restaurant_controller.dart';
import 'package:get/get.dart';

class RestaurantAndFoodBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => RestaurantController()..getRestaurantDetails(), fenix: true);
  }

}