import 'package:equatable/equatable.dart';

class MenuUi extends Equatable {
  final String title;
  final List<MealUi> items;

  const MenuUi({required this.title, required this.items});

  @override
  List<Object?> get props => [title];
}

class MealUi extends Equatable {
  final String id;
  final String name;
  final String price;
  final String imageUrl;

  const MealUi(
      {required this.id,
      required this.name,
      required this.price,
      required this.imageUrl});

  @override
  List<Object?> get props => [id];
}
