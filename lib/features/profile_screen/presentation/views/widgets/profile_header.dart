import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:foodu/features/profile_screen/presentation/models/profile_details_ui.dart';
import 'package:get/get.dart';

import 'profile_image.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key, required this.profileDetails}) : super(key: key);
  final ProfileDetailsUi profileDetails;

  onClickEdit() {
    Get.toNamed(
      Routes.editProfileRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProfileImage(size: 48,image: profileDetails.imageUrl == null ? null : NetworkImage(profileDetails.imageUrl!),),
        // Container(
        //   height: 48,
        //   width: 48,
        //   decoration: BoxDecoration(
        //       color: Theme.of(context).colorScheme.primary,
        //       shape: BoxShape.circle,
        //       gradient: const LinearGradient(
        //           begin: Alignment.topCenter,
        //           end: Alignment.bottomCenter,
        //           colors: [
        //             Color(0xFF86BA97),
        //             Color(0xFF1BAC4B),
        //           ])),
        // ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                profileDetails.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
                maxLines: 1,
              ),
              Text(
                profileDetails.phoneNumber,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: onClickEdit,
          child: SizedBox(
              height: 48,
              width: 48,
              child: Center(
                  child: Icon(
                    Icons.edit,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24,
                  ))),
        ),
      ],
    );
  }
}
