import 'package:equatable/equatable.dart';
class Restaurant extends Equatable {

  final String id;
  final bool isFavorite;
  final String imageUrl;
  final String name;
  final double rating;
  final double numberOfReviews;
  final double distance;
  final double deliveryCost;
  final bool isOpen;

  const Restaurant({
    required this.id,
    required this.isFavorite,
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.numberOfReviews,
    required this.distance,
    required this.deliveryCost,
    required this.isOpen,
  });

  @override
  List<Object?> get props => [id, isFavorite];

}