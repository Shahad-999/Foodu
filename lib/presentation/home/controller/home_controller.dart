import 'package:foodu/utils/extensions.dart';
import 'package:get/get.dart';

import '../../../config/service_locator.dart';
import '../../../domain/usecases/categories_usecase.dart';
import '../../../domain/usecases/discount_usecase.dart';
import '../../../domain/usecases/recommended_usecase.dart';
import '../../../domain/usecases/special_offers_usecase.dart';
import '../model/category_ui.dart';

class HomeController extends GetxController{
  final CategoriesUseCase _categoriesUseCase;
  final DiscountUseCase _discountUseCase;
  final RecommendedUseCase _recommendedUseCase;
  final SpecialOffersUseCase _specialUseCase;

  final categories = <CategoryUi>[].obs;

  HomeController() :
      _categoriesUseCase = getIt.get(),
      _specialUseCase = getIt.get(),
      _recommendedUseCase = getIt.get(),
      _discountUseCase = getIt.get();


  getCategories(){
    _categoriesUseCase.getCategories().then(
         (value){
           categories.value = value.toUiModel();
         }
         );
  }


}