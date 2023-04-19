
import 'package:dartz/dartz.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import '../../../../core/base/base_use_case.dart';
import '../models/meal.dart';
import '../explore_repository.dart';

class SearchUseCase extends BaseUseCase<List<Meal>,String>{
  final ExploreRepository _repository;
  SearchUseCase() : _repository = getIt.get();


  @override
  Future<Either<Failure, List<Meal>>> call([String? param]) {
    return _repository.getRecommended(param ?? 'all');
  }

}