import 'package:equatable/equatable.dart';

class ProfileDetailsUi extends Equatable {
  final String name;
  final String? imageUrl;
  final String phoneNumber;
  final String email;

  const ProfileDetailsUi(
      {required this.name,
      required this.email,
      required this.imageUrl,
      required this.phoneNumber});

  @override
  List<Object?> get props => [name, imageUrl, phoneNumber,email];
}
