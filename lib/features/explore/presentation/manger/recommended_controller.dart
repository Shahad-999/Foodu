import 'package:foodu/features/explore/presentation/mappers/extensions.dart';
import 'package:get/get.dart';

import '../../../../core/config/service_locator.dart';
import '../../domain/usecases/recommended_usecase.dart';
import '../model/meal_ui.dart';

class RecommendedController extends GetxController {
  final SearchUseCase _recommendedUseCase;
  final recommendedMeals = <MealUi>[].obs;

  RecommendedController() : _recommendedUseCase = getIt.get();

  getRecommended() {
    _recommendedUseCase.call().then((respond) {
      respond.fold((l) => {},
          (items) => recommendedMeals.value = items.toMealUiModel());
    });
  }
}
