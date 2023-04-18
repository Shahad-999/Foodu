
import '../../domain/models/category.dart';
import '../../domain/models/meal.dart';
import '../../domain/models/special_offer.dart';
import '../model/category_ui.dart';
import '../model/discount_meal_ui.dart';
import '../model/meal_ui.dart';
import '../model/special_offer_ui.dart';

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
  MealUi toMealUiModel(){
    return MealUi(id: id, name: name, imageUrl: imageUrl, rating: rating, isFavorite: isFavorite, distance: distance, deliveryCost: deliveryCost, numberOfUpvote: numberOfUpvote, categoryId: categoryId);
  }
  DiscountMealUi toDiscountMealUiModel(){
    return DiscountMealUi(id: id, name: name, imageUrl: imageUrl, isFavorite: isFavorite, price: price, deliveryCost: deliveryCost);
  }
}

extension ListMealDomainMapper on List<Meal> {
  List<MealUi> toMealUiModel(){
    return map((e) => e.toMealUiModel()).toList();
  }
  List<DiscountMealUi> toDiscountMealUiModel(){
    return map((e) => e.toDiscountMealUiModel()).toList();
  }
}