

import 'package:dartz/dartz.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/meal/data/data_sources/remote_meal_data_source.dart';
import 'package:foodu/features/meal/data/mappers/meal_details_mapper.dart';
import 'package:foodu/features/meal/domain/models/meal_details.dart';

import '../domain/meal_repository.dart';

class MealRepositoryImp extends MealRepository{
  final RemoteMealDataSource _remoteMealDataSource;

  MealRepositoryImp() : _remoteMealDataSource = getIt.get();


  @override
  Future<Either<Failure, MealDetails>> getMealDetails(String mealId) async{
    try {
      final data = await _remoteMealDataSource.getMealDetails(mealId);
      return right(data.toModel());
    } catch (l) {
      return left(Failure('no internet'));
    }
  }

  @override
  Future<String> addToCart({required String mealId, required int quantity}) async {
    return await _remoteMealDataSource.addToCart(mealId, quantity);
  }


}