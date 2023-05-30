import 'package:foodu/core/config/routes.dart';
import 'package:foodu/features/explore/domain/usecases/search_usecase.dart';
import 'package:foodu/features/explore/presentation/mappers/extensions.dart';
import 'package:get/get.dart';

import '../../../../core/config/service_locator.dart';
import '../states/search_state.dart';

class SearchController extends GetxController {
  final SearchUseCase _searchUseCase;
  final Rx<MainState> meals = Rx<MainState>(InitialMainState());
  final keyword = Get.arguments[Arguments.searchKeyWord] as String;

  SearchController() : _searchUseCase = getIt.get();

  @override
  void onInit() {
    super.onInit();
    search(keyword);
  }

  search(String keyWord) {
    meals.value = LoadingMainState();
    _searchUseCase.call(keyWord).then((respond) {
      respond.fold((l) => meals.value = FailMainState(l.message), (items) {
        if (items.isEmpty) {
          meals.value = EmptyMainState();
        } else {
          meals.value = LoadedMainState(items.toMealUiModel());
        }
      });
    });
  }
}
