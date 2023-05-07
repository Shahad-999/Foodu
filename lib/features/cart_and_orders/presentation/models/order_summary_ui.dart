import 'package:equatable/equatable.dart';

class OrderSummaryUi extends Equatable {
  final String id;
  final List<OrderMealUi> orders;
  final String subtotal;
  final String deliveryFee;
  final String total;
  const OrderSummaryUi( {
    required this.id,
    required this.orders,
    required this.subtotal,
    required this.deliveryFee,
    required this.total
  });


  @override
  List<Object?> get props => [id];
}

class OrderMealUi extends Equatable{
  final String id;
  final String quantity;
  final String price;
  final String imageUrl;
  final String name;

  const OrderMealUi({
    required this.id,
    required this.quantity,
    required this.price,
    required this.imageUrl,
    required this.name,
});

  @override
  List<Object?> get props => [id,quantity];

}