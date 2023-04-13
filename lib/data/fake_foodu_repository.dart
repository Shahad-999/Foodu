import 'package:foodu/domain/models/meal.dart';
import 'package:foodu/domain/models/special_offer.dart';
import 'package:foodu/domain/repository.dart';

import '../domain/models/category.dart';
import 'const.dart';

class FakeFoodURepository implements Repository{

  @override
  Future<List<Meal>> getDiscount() async {
    await Future.delayed(const Duration(seconds: 2));
    return fakeDiscountMeals;
  }

  @override
  Future<List<Meal>> getRecommended(String categoryId) async {
    await Future.delayed(const Duration(seconds: 2));
    return fakeRecommendedMeal;
  }

  @override
  Future<List<SpecialOffer>> getSpecialOffers() async {
    await Future.delayed(const Duration(seconds: 2));
    return fakeSpecialOffers;
  }

  @override
   Future<List<Category>> getCategories() async {
     await Future.delayed(const Duration(seconds: 2));
     return foodCategories;
   }

}