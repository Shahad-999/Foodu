
import 'package:dartz/dartz.dart';
import 'package:foodu/core/config/service_locator.dart';

import '../../../../core/base/base_use_case.dart';
import '../../../../core/failure.dart';
import '../explore_repository.dart';
import '../models/category.dart';

class CategoriesUseCase extends BaseUseCase<List<Category>,NoParam>{
  final ExploreRepository _repository;
  CategoriesUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, List<Category>>> call([NoParam? param]) {
    return _repository.getCategories();
  }

}