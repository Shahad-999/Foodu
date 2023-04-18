import 'package:equatable/equatable.dart';
class MealUi extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final double rating;
  final bool isFavorite;
  final String distance;
  final double deliveryCost;
  final int numberOfUpvote;
  final String categoryId;

  const MealUi({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.isFavorite,
    required this.distance,
    required this.deliveryCost,
    required this.numberOfUpvote,
    required this.categoryId,
  });

  @override
  List<Object?> get props => [
    id,
    isFavorite,
  ];
}
