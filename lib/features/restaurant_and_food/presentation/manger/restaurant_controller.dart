import 'package:foodu/core/config/routes.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/restaurant_and_food/domain/usecases/restaurant_use_case.dart';
import 'package:foodu/features/restaurant_and_food/presentation/mappers/restaurant_mapper.dart';
import 'package:foodu/features/restaurant_and_food/presentation/states/food_state.dart';
import 'package:get/get.dart';


class RestaurantController extends GetxController{
  final RestaurantDetailsUseCase _restaurantUseCase;
  final state = Rx<RestaurantState>(InitialRestaurantState());

  final _restaurantId =Get.arguments[Arguments.restaurantId];

  RestaurantController():
        _restaurantUseCase = getIt.get();

  getRestaurantDetails(){
    state.value = LoadingRestaurantState();
    _restaurantUseCase.call(_restaurantId).then((respond) {
      print(respond);
      respond.fold(
              (l) => state.value = FailRestaurantState(l.message),
              (items) => state.value = LoadedRestaurantState(items.toUiModel())
      );
    });
  }
}