import 'package:foodu/features/profile_screen/domain/models/profile_details.dart';
import 'package:foodu/features/profile_screen/presentation/models/profile_details_ui.dart';

extension ProfileDetailsDomainMapper on ProfileDetails {
  ProfileDetailsUi toUiModel() {
    return ProfileDetailsUi(name: name, imageUrl: imageUrl, phoneNumber: '+$phoneNumber',email: email);
  }
}
