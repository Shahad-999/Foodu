import 'package:equatable/equatable.dart';

class Category extends Equatable{

  final String id;
  final String name;
  final String imageUrl;

  const Category({ required this.name, required this.imageUrl, required this.id});

  @override
  List<Object?> get props => [id];

}