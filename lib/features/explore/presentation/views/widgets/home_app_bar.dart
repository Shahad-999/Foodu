import 'package:flutter/material.dart';
import 'package:foodu/features/profile_screen/presentation/views/widgets/profile_image.dart';
import 'package:get/get.dart';

import '../../../../../core/config/routes.dart';
import '../../../../../core/widgets/action_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  _onClickNotification() {}

  _onClickBag() {
    Get.toNamed(Routes.cartRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ProfileImage(size: 48, image: NetworkImage('https://avatars.githubusercontent.com/u/118618262?v=4')),
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
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Deliver to',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Times Square',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          ActionButton(
              icon: 'assets/svg/notification.svg',
              onPressed: _onClickNotification),
          const SizedBox(width: 16),
          ActionButton(icon: 'assets/svg/bag.svg', onPressed: _onClickBag),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(92);
}
