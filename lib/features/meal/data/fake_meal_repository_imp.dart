

import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/meal/domain/models/meal_details.dart';

import '../../../core/fake_data/fake_meal.dart';
import '../domain/meal_repository.dart';

class FakeMealRepository extends MealRepository{
  @override
  Future<Either<Failure, MealDetails>> getMealDetails(String mealId) async{
    await Future.delayed(const Duration(seconds: 2));
    return right(fakeMealDetails);
  }


}