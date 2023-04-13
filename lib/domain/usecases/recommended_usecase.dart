
import 'package:foodu/config/service_locator.dart';
import 'package:foodu/domain/models/meal.dart';

import '../repository.dart';

class RecommendedUseCase{
  final Repository _repository;
  RecommendedUseCase() : _repository = getIt.get();

  Future<List<Meal>> getRecommended({String? categoryId}) {
    return _repository.getRecommended(categoryId ?? 'all');
  }

}