import 'package:equatable/equatable.dart';

class OrderSummary extends Equatable {
  final String id;
  final List<OrderMeal> orders;
  final double subtotal;
  final double deliveryFee;
  const OrderSummary({
    required this.id,
    required this.orders,
    required this.subtotal,
    required this.deliveryFee,
  });


  @override
  List<Object?> get props => [id];
}

class OrderMeal extends Equatable{
  final String id;
  final int quantity;
  final double price;
  final String imageUrl;
  final String name;

  const OrderMeal({
    required this.id,
    required this.quantity,
    required this.price,
    required this.imageUrl,
    required this.name,
});

  @override
  List<Object?> get props => [id,quantity];

}