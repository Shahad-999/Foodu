import 'package:dio/dio.dart';
import 'package:foodu/core/utils/api_service.dart';
import 'package:foodu/features/cart_and_orders/data/data_sources/remote_order_data_source.dart';
import 'package:foodu/features/cart_and_orders/data/orders_repository_imp.dart';
import 'package:foodu/features/cart_and_orders/domain/order_repository.dart';
import 'package:foodu/features/cart_and_orders/domain/usecases/active_order_use_case.dart';
import 'package:foodu/features/cart_and_orders/domain/usecases/cancel_order_use_case.dart';
import 'package:foodu/features/cart_and_orders/domain/usecases/cancelled_order_use_case.dart';
import 'package:foodu/features/cart_and_orders/domain/usecases/cart_use_case.dart';
import 'package:foodu/features/cart_and_orders/domain/usecases/completed_order_use_case.dart';
import 'package:foodu/features/cart_and_orders/domain/usecases/order_summary_use_case.dart';
import 'package:foodu/features/cart_and_orders/domain/usecases/review_use_case.dart';
import 'package:foodu/features/explore/data/data_sources/remote_explore_data_source.dart';
import 'package:foodu/features/explore/data/explore_repository_imp.dart';
import 'package:foodu/features/explore/domain/explore_repository.dart';
import 'package:foodu/features/explore/domain/usecases/category_usecase.dart';
import 'package:foodu/features/explore/domain/usecases/search_usecase.dart';
import 'package:foodu/features/meal/data/data_sources/remote_meal_data_source.dart';
import 'package:foodu/features/meal/data/meal_repository_imp.dart';
import 'package:foodu/features/meal/domain/meal_repository.dart';
import 'package:foodu/features/profile_screen/data/data_sources/remote_profile_data_source.dart';
import 'package:foodu/features/profile_screen/data/profile_repository_imp.dart';
import 'package:foodu/features/profile_screen/domain/profile_repository.dart';
import 'package:foodu/features/profile_screen/domain/usecases/address_use_case.dart';
import 'package:foodu/features/profile_screen/domain/usecases/language_use_case.dart';
import 'package:foodu/features/profile_screen/domain/usecases/profile_details_use_case.dart';
import 'package:foodu/features/restaurant_and_food/data/data_sources/remote_food_data_source.dart';
import 'package:foodu/features/restaurant_and_food/data/food_repository_imp.dart';
import 'package:foodu/features/restaurant_and_food/domain/food_repository.dart';
import 'package:foodu/features/restaurant_and_food/domain/usecases/restaurant_menus_use_case.dart';
import 'package:foodu/features/restaurant_and_food/domain/usecases/restaurant_use_case.dart';
import 'package:get_it/get_it.dart';

import '../../features/explore/domain/usecases/categories_usecase.dart';
import '../../features/explore/domain/usecases/discount_usecase.dart';
import '../../features/explore/domain/usecases/recommended_usecase.dart';
import '../../features/explore/domain/usecases/special_offers_usecase.dart';
import '../../features/meal/domain/usecases/meal_details_use_case.dart';

GetIt getIt = GetIt.instance;

setup() {
  getIt.registerSingleton<Dio>(
      Dio()..interceptors.add(LogInterceptor(requestBody: true)));
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<RemoteExploreDataSource>(RemoteExploreDataSource());
  getIt.registerSingleton<RemoteOrdersDataSource>(RemoteOrdersDataSource());
  getIt.registerSingleton<RemoteMealDataSource>(RemoteMealDataSource());
  getIt.registerSingleton<RemoteProfileDataSource>(RemoteProfileDataSource());
  getIt.registerSingleton<RemoteFoodDataSource>(RemoteFoodDataSource());

  //repositoryRegion
  getIt.registerSingleton<ExploreRepository>(ExploreRepositoryImp());
  getIt.registerSingleton<FoodRepository>(FoodRepositoryImp());
  getIt.registerSingleton<MealRepository>(MealRepositoryImp());
  getIt.registerSingleton<OrdersRepository>(OrdersRepositoryImp());
  getIt.registerSingleton<ProfileRepository>(ProfileRepositoryImp());
  //endRegion


  //useCaseRegion
  getIt.registerSingleton<SentReviewUseCase>(SentReviewUseCase());
  getIt.registerSingleton<CategoriesUseCase>(CategoriesUseCase());
  getIt.registerSingleton<CancelOrderUseCase>(CancelOrderUseCase());
  getIt.registerSingleton<DiscountUseCase>(DiscountUseCase());
  getIt.registerSingleton<RecommendedUseCase>(RecommendedUseCase());
  getIt.registerSingleton<SearchUseCase>(SearchUseCase());
  getIt.registerSingleton<CartUseCase>(CartUseCase());
  getIt.registerSingleton<RestaurantDetailsUseCase>(RestaurantDetailsUseCase());
  getIt.registerSingleton<SpecialOffersUseCase>(SpecialOffersUseCase());
  getIt.registerSingleton<RestaurantMenusUseCase>(RestaurantMenusUseCase());
  getIt.registerSingleton<MealDetailsUseCase>(MealDetailsUseCase());
  getIt.registerSingleton<OrderSummaryUseCase>(OrderSummaryUseCase());
  getIt.registerSingleton<ActiveOrdersUseCase>(ActiveOrdersUseCase());
  getIt.registerSingleton<CompletedOrdersUseCase>(CompletedOrdersUseCase());
  getIt.registerSingleton<CancelledOrdersUseCase>(CancelledOrdersUseCase());
  getIt.registerSingleton<CategoryUseCase>(CategoryUseCase());
  getIt.registerSingleton<ProfileDetailsUseCase>(ProfileDetailsUseCase());
  getIt.registerSingleton<AddressUseCase>(AddressUseCase());
  getIt.registerSingleton<LanguageUseCase>(LanguageUseCase());
  //endRegion
}
