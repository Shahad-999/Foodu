import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import 'models/category.dart';
import 'models/meal.dart';
import 'models/special_offer.dart';

abstract class ExploreRepository{

  Future<Either<Failure,List<SpecialOffer>>> getSpecialOffers();
  Future<Either<Failure,List<Category>>> getCategories();
  Future<Either<Failure,List<Meal>>> getDiscount();
  Future<Either<Failure,List<Meal>>> getRecommended(String categoryId);
  Future<Either<Failure,List<Meal>>> search(String keyWord);

}