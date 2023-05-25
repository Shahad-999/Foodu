import 'package:foodu/features/meal/data/models/meal_details_dto.dart';
import 'package:foodu/features/meal/domain/models/meal_details.dart';

extension MealDetailsDataMapper on MealDetailsDto {
  MealDetails toModel() {
    return MealDetails(
        id: id ?? '',
        name: name ?? '',
        description: description ?? '',
        imageUrl: imageUrl ?? '',
        price: price ?? 0.0
    );
  }
}

extension ListMealDetailsDataMapper on List<MealDetailsDto> {
  List<MealDetails> toModel() {
    return map((e) => e.toModel()).toList();
  }
}
