import 'package:foodu/core/config/routes.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/meal/presentation/mappers/meal_details.dart';
import 'package:foodu/features/meal/presentation/states/meal_state.dart';
import 'package:get/get.dart';

import '../../domain/usecases/meal_details_use_case.dart';


class MealController extends GetxController{
  final MealDetailsUseCase _mealUseCase;
  final state = Rx<MealState>(InitialMealState());

  final quantity = 1.obs;
  late double price = 0.0;
  final mealId =Get.arguments[Arguments.mealId];

  MealController():
        _mealUseCase = getIt.get();

  getMealDetails(){
    state.value = LoadingMealState();
    _mealUseCase.call(mealId).then((respond) {
      respond.fold(
              (l) => state.value = FailMealState(l.message),
              (items){
                state.value = LoadedMealState(items.toUiModel());
                price = items.price;
              }
      );
    });
  }

  onClickIncrease(){
    if(quantity.value <10){
      quantity.value = ++quantity.value;
    }
  }

  onClickDecrease(){
    if(quantity.value > 1){
      quantity.value = --quantity.value;
    }
  }

  Future<String> onClickAddToBasket(){
    return _mealUseCase.addToCart(mealId: mealId, quantity: quantity.value);
  }
}