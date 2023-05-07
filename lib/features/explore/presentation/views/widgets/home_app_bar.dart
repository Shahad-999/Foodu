import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/config/routes.dart';
import '../../../../../core/widgets/action_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);


  _onClickNotification(){
  }
  
  _onClickBag(){
    Get.toNamed(Routes.cartRoute);
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF86BA97),
                  Color(0xFF1BAC4B),

                ]
              )
            ),
          ),
            SizedBox(
            width: 16.w,
          ),
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
                      ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Times Square',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 20.sp, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          ActionButton(
              icon: 'assets/svg/notification.svg',
              onPressed: _onClickNotification
          ),
          SizedBox(width: 16.w,),
          ActionButton(
              icon: 'assets/svg/bag.svg',
              onPressed: _onClickBag
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(92);
}
