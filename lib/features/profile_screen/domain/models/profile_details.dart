import 'package:equatable/equatable.dart';

class ProfileDetails extends Equatable {
  final String name;
  final String email;
  final String? imageUrl;
  final num phoneNumber;

  const ProfileDetails(
      {required this.name,
      required this.imageUrl,
      required this.phoneNumber,
      required this.email});

  @override
  List<Object?> get props => [name, imageUrl, phoneNumber, email];
}
