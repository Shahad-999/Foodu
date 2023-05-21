import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:foodu/features/profile_screen/presentation/controllers/profile_controller.dart';
import 'package:foodu/features/profile_screen/presentation/models/profile_details_ui.dart';
import 'package:foodu/features/profile_screen/presentation/states/profile_state.dart';
import 'package:get/get.dart';

import 'profile_action_row.dart';
import 'profile_header.dart';

class ProfileBody extends StatelessWidget {
  ProfileBody({Key? key}) : super(key: key);
  final ProfileController _controller = Get.find()..getProfileInfo();

  onClickMyFavoriteRestaurants() {
    Get.toNamed(
      Routes.myFavoriteRestaurantsRoute,
    );
  }

  onClickProfile() {
    Get.toNamed(
      Routes.editProfileRoute,
    );
  }

  onClickAddress() {
    Get.toNamed(
      Routes.addressRoute,
    );
  }

  onClickLanguage() {
    Get.toNamed(
      Routes.languageRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
        () => handleStateWidget(_controller.profileDetails.value, context));
  }

  Widget handleStateWidget(ProfileState value, BuildContext context) {
    switch (value.runtimeType) {
      case LoadingProfileState:
        {
          return const Center(child: CircularProgressIndicator());
        }
      case LoadedProfileState:
        {
          return onLoadedData(context, (value as LoadedProfileState).data);
        }
      default:
        {
          return Container();
        }
    }
  }

  Widget onLoadedData(BuildContext context, ProfileDetailsUi data) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      children: [
        ProfileHeader(
          profileDetails: data,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(thickness: 1),
        ),
        // ProfileActionRow.icon(
        //   iconData: Icons.calendar_month_rounded,
        //   text: 'My Favorite Restaurant',
        //   onClickItem: onClickMyFavoriteRestaurants,
        // ),
        ProfileActionRow(
          icon: 'assets/svg/profile.svg',
          text: 'Profile',
          onClickItem: onClickProfile,
        ),
        ProfileActionRow.icon(
          iconData: Icons.location_on_outlined,
          text: 'Address',
          onClickItem: onClickAddress,
        ),
        ProfileActionRow.icon(
          iconData: Icons.language_outlined,
          text: 'Language',
          onClickItem: onClickLanguage,
        ),
        const ProfileActionRow.icon(
          iconData: Icons.logout,
          text: 'Logout',
        ),
      ],
    );
  }
}
