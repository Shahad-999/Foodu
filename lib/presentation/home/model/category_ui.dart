import 'package:equatable/equatable.dart';

class CategoryUi extends Equatable{

  final String id;
  final String name;
  final String imageUrl;

  const CategoryUi({ required this.name, required this.imageUrl, required this.id});

  @override
  List<Object?> get props => [id];

}