import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import '../../../core/fake_data/fake_explore.dart';
import '../domain/explore_repository.dart';
import '../domain/models/category.dart';
import '../domain/models/meal.dart';
import '../domain/models/special_offer.dart';

class FakeExploreRepository implements ExploreRepository{

  @override
  Future<Either<Failure,List<Meal>>> getDiscount() async {
    await Future.delayed(const Duration(seconds: 2));
    return right(fakeDiscountMeals);
  }

  @override
  Future<Either<Failure,List<Meal>>> getRecommended(String categoryId) async {
    await Future.delayed(const Duration(seconds: 2));
    return right(fakeRecommendedMeal);
  }

  @override
  Future<Either<Failure,List<SpecialOffer>>> getSpecialOffers() async {
    await Future.delayed(const Duration(seconds: 2));
    return right(fakeSpecialOffers);
  }

  @override
   Future<Either<Failure,List<Category>>> getCategories() async {
     await Future.delayed(const Duration(seconds: 2));
     return right(foodCategories);
   }

  @override
  Future<Either<Failure,List<Meal>>> search(String keyWord) async {
    await Future.delayed(const Duration(seconds: 3));
    return right(fakeRecommendedMeal);
  }

  @override
  Future<Either<Failure, List<Meal>>> getCategoryMeals(String categoryId) async{
    await Future.delayed(const Duration(seconds: 3));
    return right(fakeRecommendedMeal);
  }

}