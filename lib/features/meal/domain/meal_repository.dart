import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';

import '../../meal/domain/models/meal_details.dart';


abstract class MealRepository{
  Future<Either<Failure,MealDetails>> getMealDetails(String mealId);

  Future<String> addToCart({required String mealId, required int quantity});
}