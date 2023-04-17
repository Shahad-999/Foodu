import 'package:equatable/equatable.dart';

class SpecialOffer extends Equatable {
  final String id;
  final String imageUrl;
  final int percentage;

  const SpecialOffer({required this.id, required this.imageUrl, required this.percentage});

  @override
  List<Object?> get props => [id];

}