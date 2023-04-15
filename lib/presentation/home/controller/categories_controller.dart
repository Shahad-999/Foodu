import 'package:foodu/config/service_locator.dart';
import 'package:foodu/utils/extensions.dart';
import 'package:get/get.dart';

import '../../../domain/usecases/categories_usecase.dart';
import '../model/category_ui.dart';

class CategoriesController extends GetxController{
  final CategoriesUseCase _categoriesUseCase;
  final categories = <CategoryUi>[].obs;

  CategoriesController(): _categoriesUseCase = getIt.get();

  getCategories(){
    _categoriesUseCase
        .getCategories()
        .then(
            (items) => categories.value = items.toUiModel()
    );
  }
}