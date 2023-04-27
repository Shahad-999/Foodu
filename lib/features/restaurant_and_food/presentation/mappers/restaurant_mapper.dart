import 'package:flutter/material.dart';
import '../../domain/models/restaurant.dart';
import '../models/restaurant_ui.dart';

extension RestaurantDomainMapper on Restaurant {
  RestaurantUi toUiModel() {
    return RestaurantUi(
        id: id,
        favoriteColor: isFavorite ? Colors.red : Colors.white70 ,
        imageUrl: imageUrl,
        name: name,
        rating: '$rating',
        numberOfReviews: '(${numberOfReviews}k reviews)',
        distance: '$distance km',
        deliveryCost: '\$$deliveryCost',
        offersState: isOpen ? 'Offers are available' : 'Offers are not available'
    );
  }
}

extension ListRestaurantDomainMapper on List<Restaurant> {
  List<RestaurantUi> toUiModel() {
    return map((e) => e.toUiModel()).toList();
  }
}
