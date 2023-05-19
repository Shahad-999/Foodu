
import 'package:dartz/dartz.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';

import '../../../../core/base/base_use_case.dart';
import '../explore_repository.dart';
import '../models/meal.dart';

class CategoryUseCase extends BaseUseCase<List<Meal>,String>{
  final ExploreRepository _repository;
  CategoryUseCase() : _repository = getIt.get();


  @override
  Future<Either<Failure, List<Meal>>> call([String? param]) {
    return _repository.getCategoryMeals(param ?? '');
  }

}