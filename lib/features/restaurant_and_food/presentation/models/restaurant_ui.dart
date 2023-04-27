import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
class RestaurantUi extends Equatable {

  final String id;
  final Color favoriteColor;
  final String imageUrl;
  final String name;
  final String rating;
  final String numberOfReviews;
  final String distance;
  final String deliveryCost;
  final String offersState;

  const RestaurantUi({
    required this.id,
    required this.favoriteColor,
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.numberOfReviews,
    required this.distance,
    required this.deliveryCost,
    required this.offersState,
  });

  @override
  List<Object?> get props => [id, favoriteColor];

}