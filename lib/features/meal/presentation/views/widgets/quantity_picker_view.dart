import 'package:flutter/material.dart';
import 'package:foodu/features/meal/presentation/manger/meal_controller.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

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
            SizedBox(
              width: 40.w,
            ),
            SizedBox(
              width: 30,
              child: Obx(()=> Text(
                  '${controller.quantity}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 32.sp, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: 40.w,
            ),
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
