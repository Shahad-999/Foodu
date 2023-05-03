
import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/app_button.dart';
import 'package:get/get.dart';

import '../../manger/meal_controller.dart';

class AddBasketButton extends StatelessWidget {
  const AddBasketButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MealController>(
        builder : (controller){
          return Positioned(
              right: 16,
              left: 16,
              bottom: 40,
              child: Obx(()=>AppButton(
                buttonText: 'Add to Basket - \$${controller.price * controller.quantity.value}',
                onTap: controller.onClickAddToBasket,
              ),
              ));
        }
    );
  }
}
