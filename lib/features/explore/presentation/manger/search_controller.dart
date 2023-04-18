import 'package:foodu/core/config/routes.dart';
import 'package:foodu/features/explore/presentation/mappers/extensions.dart';
import 'package:get/get.dart';

import '../../../../core/config/service_locator.dart';
import '../../domain/usecases/recommended_usecase.dart';
import '../states/search_state.dart';

class SearchController extends GetxController {
  final SearchUseCase _searchUseCase;
  final Rx<SearchState> meals = Rx<SearchState>(InitialSearchState()) ;
  final keyword = Get.arguments[Arguments.searchKeyWord] as String;

  SearchController() : _searchUseCase = getIt.get();
  @override
  void onInit() {
    super.onInit();
    search(keyword);
  }

  search(String keyWord) {
    meals.value = LoadingSearchState();
    _searchUseCase.call(keyWord).then((respond) {
      respond.fold(
          (l) => meals.value = FailSearchState(l.message),
          (items) => meals.value = LoadedSearchState(items.toMealUiModel()));
    });
  }

}
