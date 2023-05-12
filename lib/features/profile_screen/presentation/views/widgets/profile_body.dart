import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:get/get.dart';

import 'profile_action_row.dart';
import 'profile_header.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  onClickMyFavoriteRestaurants() {
    Get.toNamed(
      Routes.myFavoriteRestaurantsRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      children: [
        const ProfileHeader(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(thickness: 1),
        ),
        ProfileActionRow.icon(
          iconData: Icons.calendar_month_rounded,
          text: 'My Favorite Restaurant',
          onClickItem: onClickMyFavoriteRestaurants,
        ),
        ProfileActionRow(
          icon: 'assets/svg/profile.svg',
          text: 'Profile',
          onClickItem: () {},
        ),
        ProfileActionRow.icon(
          iconData: Icons.location_on_outlined,
          text: 'Address',
          onClickItem: () {},
        ),
        ProfileActionRow(
          icon: 'assets/svg/notification.svg',
          text: 'Notification',
          onClickItem: () {},
        ),
        ProfileActionRow.icon(
          iconData: Icons.language_outlined,
          text: 'Language',
          onClickItem: () {},
        ),
        const ProfileActionRow.icon(
          iconData: Icons.logout,
          text: 'Logout',
        ),
      ],
    );
  }
}
