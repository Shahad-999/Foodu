import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodu/features/meal/presentation/states/meal_state.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/constant.dart';
import '../../manger/meal_controller.dart';
import '../../models/meal_details_ui.dart';
import 'add_basket_button.dart';
import 'quantity_picker_view.dart';

class MealDetailsBody extends StatelessWidget {
  MealDetailsBody({Key? key}) : super(key: key);
  final MealController _mealController = Get.find();

  Widget getWidgetState(MealState state, BuildContext context) {
    switch (state.runtimeType) {
      case LoadingMealState:
        {
          return const Center(child: CircularProgressIndicator());
        }
      case LoadedMealState:
        {
          return onLoadedData(context, (state as LoadedMealState).data);
        }
      case FailMealState:
        {
          return Center(
              child: SvgPicture.asset(
                'assets/svg/fail.svg',
                semanticsLabel: '',
              ));
        }
      default:
        {
          return Container();
        }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Obx(() => getWidgetState(_mealController.state.value, context));
  }

  Widget onLoadedData(BuildContext context,MealDetailsUi meal){
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Stack(children: [
        Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: ListView(padding: const EdgeInsets.all(0), children: [
              Hero(
                tag: imageTag(_mealController.mealId),
                child: SizedBox(
                  height: 434.h,
                  child: Image.network(
                    meal.imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.h),
                    Text(
                      meal.name,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 28.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.h),
                    const Divider(thickness: 1.5),
                    SizedBox(height: 16.h),
                    Text(
                      meal.description,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 16.h),
                    const Divider(thickness: 1.5),
                    SizedBox(height: 16.h),
                    const QuantityPickerView(),
                  ],
                ),
              ),
            ])),
        const AddBasketButton(),
        Positioned(
            right: 24,
            left: 24,
            top: 72,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => {Navigator.of(context).pop()},
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color:
                      Theme.of(context).colorScheme.secondary.withAlpha(30),
                    ),
                    child: SvgPicture.asset(
                      'assets/svg/back_arrow.svg',
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onBackground,
                          BlendMode.srcIn),
                      semanticsLabel: 'Label',
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(width: 16.w),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color:
                    Theme.of(context).colorScheme.secondary.withAlpha(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset(
                      'assets/svg/sent.svg',
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onBackground,
                          BlendMode.srcIn),
                      semanticsLabel: 'Label',
                      width: 24,
                      height: 24,
                    ),
                  ),
                )
              ],
            )),
      ]),
    );
  }
}
