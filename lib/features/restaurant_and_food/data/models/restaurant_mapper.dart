import 'package:foodu/features/restaurant_and_food/data/mappers/restaurant_dto.dart';
import 'package:foodu/features/restaurant_and_food/domain/models/restaurant.dart';

extension RestaurantDataMapper on RestaurantDto {
  Restaurant toModel() {
    return Restaurant(
        id: id ?? '',
        isFavorite: isFavorite ?? false,
        imageUrl: imageUrl ?? '',
        name: name ?? '',
        rating: rating?.toDouble() ?? 0.0,
        numberOfReviews: numberOfReviews?.toDouble() ?? 0.0,
        distance: distance?.toDouble() ?? 0.0 ,
        deliveryCost: deliveryCost?.toDouble() ?? 0.0,
        isOpen: isOpen ?? true);
  }
}

extension ListRestaurantDataMapper on List<RestaurantDto> {
  List<Restaurant> toModel() {
    return map((e) => e.toModel()).toList();
  }
}
