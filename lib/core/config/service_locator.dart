
import 'package:foodu/features/explore/domain/repository.dart';
import 'package:get_it/get_it.dart';

import '../../features/explore/data/fake_foodu_repository.dart';
import '../../features/explore/domain/usecases/categories_usecase.dart';
import '../../features/explore/domain/usecases/discount_usecase.dart';
import '../../features/explore/domain/usecases/recommended_usecase.dart';
import '../../features/explore/domain/usecases/special_offers_usecase.dart';

GetIt getIt = GetIt.instance;

setup() {
  getIt.registerSingleton<ExploreRepository>(FakeFoodURepository());
  getIt.registerSingleton<CategoriesUseCase>(CategoriesUseCase());
  getIt.registerSingleton<DiscountUseCase>(DiscountUseCase());
  getIt.registerSingleton<RecommendedUseCase>(RecommendedUseCase());
  getIt.registerSingleton<SpecialOffersUseCase>(SpecialOffersUseCase());

}
