import '../../domain/models/meal_details.dart';
import '../models/meal_details_ui.dart';

extension MealDetailsDomainMapper on MealDetails {
  MealDetailsUi toUiModel() {
    return MealDetailsUi(
        id: id,
        name: name,
        description: description,
        imageUrl: imageUrl,
        price: '\$$price');
  }
}

extension ListMealDetailsDomainMapper on List<MealDetails> {
  List<MealDetailsUi> toUiModel() {
    return map((e) => e.toUiModel()).toList();
  }
}
