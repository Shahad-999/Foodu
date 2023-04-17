import 'package:equatable/equatable.dart';
class Meal extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final double rating;
  final bool isFavorite;
  final String distance;
  final double price;
  final double deliveryCost;
  final int numberOfUpvote;
  final String categoryId;
  final bool isDiscount;

  const Meal({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.isFavorite,
    required this.distance,
    required this.price,
    required this.deliveryCost,
    required this.numberOfUpvote,
    required this.categoryId,
    required this.isDiscount,
  });

  @override
  List<Object?> get props => [
    id,
    isFavorite,
  ];
}
