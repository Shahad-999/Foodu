import 'package:foodu/core/config/routes.dart';
import 'package:foodu/features/explore/domain/usecases/category_usecase.dart';
import 'package:foodu/features/explore/presentation/mappers/extensions.dart';
import 'package:get/get.dart';

import '../../../../core/config/service_locator.dart';
import '../states/search_state.dart';

class CategoryController extends GetxController {
  final CategoryUseCase _categoryUseCase;
  final Rx<MainState> meals = Rx<MainState>(InitialMainState()) ;
  final categoryId = Get.arguments[Arguments.categoryId] as String;
  final categoryTitle = Get.arguments[Arguments.categoryTitle] as String;

  CategoryController() : _categoryUseCase = getIt.get();
  @override
  void onInit() {
    super.onInit();
    fetchMeals();
  }

  fetchMeals() {
    meals.value = LoadingMainState();
    _categoryUseCase.call(categoryId).then((respond) {
      respond.fold(
          (l) => meals.value = FailMainState(l.message),
          (items) => meals.value = LoadedMainState(items.toMealUiModel()));
    });
  }

}
