import 'package:equatable/equatable.dart';

class CartItemUi extends Equatable {

  final String id;
  final String name;
  final String imageUrl;
  final String rating;
  final String distance;
  final String numberOfUpvote;
  final String price;
  
  const CartItemUi(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.rating,
      required this.distance,
      required this.numberOfUpvote,
      required this.price});

  @override
  List<Object?> get props => [id];

}