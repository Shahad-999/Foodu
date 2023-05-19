import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/explore/domain/usecases/discount_usecase.dart';
import 'package:foodu/features/explore/presentation/mappers/extensions.dart';
import 'package:get/get.dart';

import '../model/discount_meal_ui.dart';

class DiscountController extends GetxController {
  final DiscountUseCase _discountUseCase;
  final meals = <DiscountMealUi>[].obs;

  DiscountController() : _discountUseCase = getIt.get();

  fetchDiscountMeals() {
    _discountUseCase.call().then((respond) {
      respond.fold(
          (l) => {}, (items) => meals.value = items.toDiscountMealUiModel());
    });
  }
}
