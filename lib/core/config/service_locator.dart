
import 'package:foodu/features/home/domain/repository.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/fake_foodu_repository.dart';
import '../../features/home/domain/usecases/categories_usecase.dart';
import '../../features/home/domain/usecases/discount_usecase.dart';
import '../../features/home/domain/usecases/recommended_usecase.dart';
import '../../features/home/domain/usecases/special_offers_usecase.dart';

GetIt getIt = GetIt.instance;

setup() {
  getIt.registerSingleton<Repository>(FakeFoodURepository());
  getIt.registerSingleton<CategoriesUseCase>(CategoriesUseCase());
  getIt.registerSingleton<DiscountUseCase>(DiscountUseCase());
  getIt.registerSingleton<RecommendedUseCase>(RecommendedUseCase());
  getIt.registerSingleton<SpecialOffersUseCase>(SpecialOffersUseCase());

}
