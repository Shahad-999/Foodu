import 'package:foodu/core/config/routes.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/restaurant_and_food/domain/usecases/restaurant_menus_use_case.dart';
import 'package:foodu/features/restaurant_and_food/presentation/mappers/menu_mapper.dart';
import 'package:get/get.dart';

import '../states/menu_state.dart';


class RestaurantMenusController extends GetxController{
  final RestaurantMenusUseCase _menusUseCase;
  final state = Rx<MenuState>(InitialMenuState());

  final _restaurantId =Get.arguments[Arguments.restaurantId];

  RestaurantMenusController():
        _menusUseCase = getIt.get();

  getMenus(){
    _menusUseCase.call(_restaurantId).then((respond) {
      respond.fold(
              (l) => {},
              (items) => state.value = LoadedMenuState(items.toUiModel())
      );
    });
  }
}