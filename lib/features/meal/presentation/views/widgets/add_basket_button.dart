import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:foodu/core/widgets/app_button.dart';
import 'package:foodu/features/meal/presentation/controllers/meal_controller.dart';
import 'package:get/get.dart';


class AddBasketButton extends StatelessWidget {
  const AddBasketButton({Key? key}) : super(key: key);

  moveToCheckoutScreen(String orderId) {
    Get.toNamed(Routes.checkoutOrdersRoute,
        arguments: {Arguments.orderId: orderId});
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MealController>(builder: (controller) {
      return Positioned(
          right: 16,
          left: 16,
          bottom: 40,
          child: Obx(
            () => AppButton(
                buttonText:
                    'Add to Basket - \$${controller.price * controller.quantity.value}',
                onTap: () {
                  controller
                      .onClickAddToBasket()
                      .then((value) => moveToCheckoutScreen(value));
                }),
          ));
    });
  }
}
