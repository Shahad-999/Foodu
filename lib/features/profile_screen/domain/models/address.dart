import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final String title;
  final String fullAddress;
  final bool isDefault;

  const Address({
    required this.title, required this.fullAddress, this.isDefault = false
});

  @override
  List<Object?> get props => [title,fullAddress,isDefault];
}
