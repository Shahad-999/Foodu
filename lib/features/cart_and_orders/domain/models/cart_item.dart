import 'package:equatable/equatable.dart';

class CartItem extends Equatable {

  final String id;
  final String name;
  final String imageUrl;
  final double rating;
  final double distance;
  final int numberOfUpvote;
  final double price;
  
  const CartItem(
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