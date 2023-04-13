

import 'package:foodu/domain/models/special_offer.dart';

import 'models/category.dart';
import 'models/meal.dart';

abstract class Repository{

  Future<List<SpecialOffer>> getSpecialOffers();
  Future<List<Category>> getCategories();
  Future<List<Meal>> getDiscount();
  Future<List<Meal>> getRecommended(String categoryId);

}