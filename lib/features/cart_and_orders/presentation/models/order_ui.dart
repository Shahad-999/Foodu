import 'package:equatable/equatable.dart';
class OrderUi extends Equatable {
  final String id;
  final String mealName;
  final String imageUrl;
  final String distance;
  final String price;
  final String quantity;

  const OrderUi({
    required this.id,
    required this.mealName,
    required this.imageUrl,
    required this.distance,
    required this.price,
    required this.quantity,
  });

  @override
  List<Object?> get props => [
    id,
  ];
}
