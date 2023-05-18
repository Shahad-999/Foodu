import 'package:foodu/features/cart_and_orders/presentation/controllers/order_review_controller.dart';
import 'package:get/get.dart';

class ReviewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderReviewController(), fenix: true);
  }
}
