import 'package:equatable/equatable.dart';

class SpecialOfferUi extends Equatable {
  final String id;
  final String imageUrl;
  final int percentage;

  const SpecialOfferUi({required this.id, required this.imageUrl, required this.percentage});

  @override
  List<Object?> get props => [id];

}