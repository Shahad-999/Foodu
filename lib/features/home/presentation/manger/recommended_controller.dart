import 'package:foodu/core/utils/extensions.dart';
import 'package:get/get.dart';

import '../../../../core/config/service_locator.dart';
import '../../domain/usecases/recommended_usecase.dart';
import '../model/recommended_meal_ui.dart';

class RecommendedController extends GetxController{
  final RecommendedUseCase _recommendedUseCase;
  final recommendedMeals = <RecommendedMealUi>[].obs;

  RecommendedController(): _recommendedUseCase = getIt.get();

  getRecommended(){
    _recommendedUseCase
        .getRecommended()
        .then(
            (items) => recommendedMeals.value = items.toUiModel()
    );
  }

}