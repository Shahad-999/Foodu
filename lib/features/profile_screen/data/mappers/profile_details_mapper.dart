import 'package:foodu/features/profile_screen/data/models/profile_details_dto.dart';
import 'package:foodu/features/profile_screen/domain/models/profile_details.dart';

extension ProfileDetailsDataMapper on ProfileDetailsDto {
  ProfileDetails toModel() {
    return ProfileDetails(
        name: name ?? '',
        imageUrl: imageUrl,
        phoneNumber: phoneNumber ?? 000000000,
        email: email ?? '');
  }
}


extension ProfileDetailsDtoDataMapper on ProfileDetails {
  ProfileDetailsDto toDto() {
    return ProfileDetailsDto(
      name: name,
      imageUrl: imageUrl,
      phoneNumber: phoneNumber,
      email: email
    );
  }
}

