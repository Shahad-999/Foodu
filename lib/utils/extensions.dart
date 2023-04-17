
import 'package:foodu/domain/models/meal.dart';

import '../domain/models/category.dart';
import '../domain/models/special_offer.dart';
import '../presentation/home/model/category_ui.dart';
import '../presentation/home/model/recommended_meal_ui.dart';
import '../presentation/home/model/special_offer_ui.dart';

extension CategoryDomainMapper on Category {
  CategoryUi toUiModel(){
    return CategoryUi(name: name, imageUrl: imageUrl, id: id);
  }
}

extension ListCategoryDomainMapper on List<Category> {
  List<CategoryUi> toUiModel(){
    return map((e) => e.toUiModel()).toList();
  }
}

extension SpecialOfferDomainMapper on SpecialOffer {
  SpecialOfferUi toUiModel(){
    return SpecialOfferUi(percentage: percentage, imageUrl: imageUrl, id: id);
  }
}

extension ListSpecialOfferDomainMapper on List<SpecialOffer> {
  List<SpecialOfferUi> toUiModel(){
    return map((e) => e.toUiModel()).toList();
  }
}

extension MealDomainMapper on Meal {
  RecommendedMealUi toUiModel(){
    return RecommendedMealUi(id: id, name: name, imageUrl: imageUrl, rating: rating, isFavorite: isFavorite, distance: distance, deliveryCost: deliveryCost, numberOfUpvote: numberOfUpvote, categoryId: categoryId);
  }
}

extension ListMealDomainMapper on List<Meal> {
  List<RecommendedMealUi> toUiModel(){
    return map((e) => e.toUiModel()).toList();
  }
}