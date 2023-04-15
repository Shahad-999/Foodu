import 'package:get/get.dart';

import '../home/controller/categories_controller.dart';
import '../home/controller/special_offer_controller.dart';

class MainBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesController()..getCategories(), fenix: true);
    Get.lazyPut(() => SpecialOfferController()..getSpecialOfferItems(), fenix: true);
  }

}