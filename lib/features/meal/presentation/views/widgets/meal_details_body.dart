import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodu/features/meal/presentation/controllers/meal_controller.dart';
import 'package:foodu/features/meal/presentation/states/meal_state.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/constant.dart';
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
                  height: 434,
                  child: Image.network(
                    meal.imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      meal.name,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    const Divider(thickness: 1.5),
                    const SizedBox(height: 16),
                    Text(
                      meal.description,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    const Divider(thickness: 1.5),
                    const SizedBox(height: 16),
                    const QuantityPickerView(),
                    const SizedBox(height: 120)
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
                const SizedBox(width: 16),
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
