import 'package:flutter/material.dart';
import 'package:foodu/features/meal/presentation/controllers/meal_controller.dart';
import 'package:get/get.dart';

import 'picker_button.dart';

class QuantityPickerView extends StatelessWidget {
  const QuantityPickerView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetBuilder<MealController>(
      builder:(controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonPicker(
              icon: Icons.remove,
              onClick: controller.onClickDecrease,
            ),
            const SizedBox(width: 40),
            SizedBox(
              width: 30,
              child: Obx(()=> Text(
                  '${controller.quantity}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 32, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(width: 40),
            ButtonPicker(
              icon: Icons.add_rounded,
              onClick: controller.onClickIncrease,
            ),
          ],
        );
      }
    );
  }
}
