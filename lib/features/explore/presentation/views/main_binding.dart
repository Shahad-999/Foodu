import 'package:foodu/features/cart_and_orders/presentation/controllers/active_order_controller.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/cancelled_order_controller.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/completed_order_controller.dart';
import 'package:foodu/features/explore/presentation/controllers/categories_controller.dart';
import 'package:foodu/features/explore/presentation/controllers/discount_controller.dart';
import 'package:foodu/features/explore/presentation/controllers/recommended_controller.dart';
import 'package:foodu/features/explore/presentation/controllers/special_offer_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesController()..getCategories(), fenix: true);
    Get.lazyPut(() => SpecialOfferController()..getSpecialOfferItems(), fenix: true);
    Get.lazyPut(() => RecommendedController()..getRecommended(), fenix: true);
    Get.lazyPut(() => DiscountController()..fetchDiscountMeals(), fenix: true);

    Get.lazyPut(() => ActiveOrderController()..fetchOrders(), fenix: true);
    Get.lazyPut(() => CompletedOrderController()..fetchOrders(), fenix: true);
    Get.lazyPut(() => CancelledOrderController()..fetchOrders(), fenix: true);

  }

}