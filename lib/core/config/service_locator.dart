
import 'package:foodu/features/explore/domain/explore_repository.dart';
import 'package:foodu/features/restaurant_and_food/data/fake_food_repository_imp.dart';
import 'package:foodu/features/restaurant_and_food/domain/food_repository.dart';
import 'package:foodu/features/restaurant_and_food/domain/usecases/restaurant_menus_use_case.dart';
import 'package:foodu/features/restaurant_and_food/domain/usecases/restaurant_use_case.dart';
import 'package:get_it/get_it.dart';

import '../../features/explore/data/fake_explore_repository.dart';
import '../../features/explore/domain/usecases/categories_usecase.dart';
import '../../features/explore/domain/usecases/discount_usecase.dart';
import '../../features/explore/domain/usecases/recommended_usecase.dart';
import '../../features/explore/domain/usecases/special_offers_usecase.dart';

GetIt getIt = GetIt.instance;

setup() {

  //repositoryRegion
  getIt.registerSingleton<ExploreRepository>(FakeExploreRepository());
  getIt.registerSingleton<FoodRepository>(FakeFoodRepository());
  //endRegion


  //useCaseRegion
  getIt.registerSingleton<CategoriesUseCase>(CategoriesUseCase());
  getIt.registerSingleton<DiscountUseCase>(DiscountUseCase());
  getIt.registerSingleton<SearchUseCase>(SearchUseCase());
  getIt.registerSingleton<RestaurantDetailsUseCase>(RestaurantDetailsUseCase());
  getIt.registerSingleton<SpecialOffersUseCase>(SpecialOffersUseCase());
  getIt.registerSingleton<RestaurantMenusUseCase>(RestaurantMenusUseCase());
  //endRegion

}
