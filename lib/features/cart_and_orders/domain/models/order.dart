import 'package:equatable/equatable.dart';
class OrderItem extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final double distance;
  final double price;
  final int quantity;

  const OrderItem({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.distance,
    required this.price,
    required this.quantity
  });

  @override
  List<Object?> get props => [
    id,
  ];
}
