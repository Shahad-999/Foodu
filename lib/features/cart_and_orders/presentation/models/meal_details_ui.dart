import 'package:equatable/equatable.dart';

class MealDetailsUi extends Equatable {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String price;

  const MealDetailsUi(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.price});

  @override
  List<Object?> get props => [id];
}
