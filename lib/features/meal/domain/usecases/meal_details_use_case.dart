import 'package:dartz/dartz.dart';
import 'package:foodu/core/base/base_use_case.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/meal/domain/meal_repository.dart';
import 'package:foodu/features/meal/domain/models/meal_details.dart';

class MealDetailsUseCase extends BaseUseCase<MealDetails,String>{

  final MealRepository _repository;
  MealDetailsUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, MealDetails>> call([String? param]) {
    return _repository.getMealDetails(param ?? 'id');
  }

}