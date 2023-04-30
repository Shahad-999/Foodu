import 'package:equatable/equatable.dart';

class Menu extends Equatable {

  final String title;
  final List<Meal> items;
  const Menu(this.title, this.items);

  @override
  List<Object?> get props => [title];

}
class Meal extends Equatable{
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  const Meal(this.id, this.name, this.price, this.imageUrl);
  @override
  List<Object?> get props => [id];
}