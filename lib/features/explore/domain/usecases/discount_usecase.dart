
import 'package:dartz/dartz.dart';
import 'package:foodu/core/config/service_locator.dart';

import '../../../../core/base/base_use_case.dart';
import '../../../../core/failure.dart';
import '../explore_repository.dart';
import '../models/meal.dart';

class DiscountUseCase extends BaseUseCase<List<Meal>,NoParam>{
  final ExploreRepository _repository;
  DiscountUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure,List<Meal>>> call([NoParam? param]) {
    return _repository.getDiscount();
  }


}