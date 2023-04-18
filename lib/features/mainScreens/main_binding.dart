import 'package:get/get.dart';

import '../home/presentation/manger/categories_controller.dart';
import '../home/presentation/manger/discount_controller.dart';
import '../home/presentation/manger/recommended_controller.dart';
import '../home/presentation/manger/special_offer_controller.dart';


class MainBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesController()..getCategories(), fenix: true);
    Get.lazyPut(() => SpecialOfferController()..getSpecialOfferItems(), fenix: true);
    Get.lazyPut(() => RecommendedController()..getRecommended(), fenix: true);
    Get.lazyPut(() => DiscountController()..fetchDiscountMeals(), fenix: true);

  }

}