import 'package:equatable/equatable.dart';
class DiscountMealUi extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final bool isFavorite;
  final double price;
  final double deliveryCost;

  const DiscountMealUi({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isFavorite,
    required this.price,
    required this.deliveryCost,
  });

  @override
  List<Object?> get props => [
    id,
    isFavorite,
  ];
}
