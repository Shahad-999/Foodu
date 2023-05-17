import 'package:foodu/features/explore/data/models/category_dto.dart';
import 'package:foodu/features/explore/data/models/meal_dto.dart';
import 'package:foodu/features/explore/data/models/special_offer_dto.dart';

import '../../domain/models/category.dart';
import '../../domain/models/meal.dart';
import '../../domain/models/special_offer.dart';

extension CategoryDataMapper on CategoryDto {
  Category toModel() {
    return Category(name: name ?? 'UnNone', imageUrl: imageUrl ?? '', id: id);
  }
}

extension ListCategoryDataMapper on List<CategoryDto> {
  List<Category> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension SpecialOfferDataMapper on SpecialOfferDto {
  SpecialOffer toModel() {
    return SpecialOffer(
        percentage: percentage?.toInt() ?? 0, imageUrl: imageUrl ?? '', id: id);
  }
}

extension ListSpecialOfferDataMapper on List<SpecialOfferDto> {
  List<SpecialOffer> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension MealDataMapper on MealDto {
  Meal toMealModel() {
    return Meal(id: id,
        name: name ?? 'Un None',
        imageUrl: imageUrl ?? '',
        rating: rating?.toDouble() ?? 0.0,
        isFavorite: isFavorite ?? false,
        distance: distance ?? '',
        price: price?.toDouble() ?? 0.0,
        deliveryCost: deliveryCost?.toDouble() ?? 0.0,
        numberOfUpvote: numberOfUpvote?.toInt() ?? 40,
        categoryId: categoryId ?? '',
        isDiscount: isDiscount ?? false);
  }
}

extension ListMealDataMapper on List<MealDto> {
  List<Meal> toMealModel() {
    return map((e) => e.toMealModel()).toList();
  }
}