import 'package:foodu/domain/repository.dart';
import 'package:foodu/domain/usecases/categories_usecase.dart';
import 'package:foodu/domain/usecases/discount_usecase.dart';
import 'package:foodu/domain/usecases/special_offers_usecase.dart';
import 'package:get_it/get_it.dart';

import '../data/fake_foodu_repository.dart';
import '../domain/usecases/recommended_usecase.dart';

GetIt getIt = GetIt.instance;

setup() {
  getIt.registerSingleton<Repository>(FakeFoodURepository());
  getIt.registerSingleton<CategoriesUseCase>(CategoriesUseCase());
  getIt.registerSingleton<DiscountUseCase>(DiscountUseCase());
  getIt.registerSingleton<RecommendedUseCase>(RecommendedUseCase());
  getIt.registerSingleton<SpecialOffersUseCase>(SpecialOffersUseCase());

}
