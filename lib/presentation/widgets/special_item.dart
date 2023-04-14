import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../config/routes.dart';

class SpecialItem extends StatelessWidget {
  const SpecialItem({super.key, this.backgroundColor});

  final Color? backgroundColor;

  _clickSpecialItem() {
    Get.toNamed(Routes.restaurantRoute,
        arguments: {Arguments.restaurantId: 'SS'});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.w),
      child: GestureDetector(
        onTap: _clickSpecialItem,
        child: Container(
          height: 178.h,
          width: MediaQuery.of(context).size.width - 48.w,
          decoration: BoxDecoration(
            // color: backgroundColor ?? Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(36),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                left: 0,
                top: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/images/background.png',
                ),
              ),
              Positioned(
                  bottom: 16,
                  top: 16,
                  right: 24,
                  child: Image.network(
                      'https://cdn.pixabay.com/photo/2016/04/01/09/41/cherry-1299509_960_720.png')),
              Positioned(
                  top: 24.h,
                  left: 40.w,
                  child: Text(
                    '30%',
                    style: TextStyle(
                        fontSize: 64.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  )),
              Positioned(
                  top: 100.h,
                  left: 40.w,
                  child: Text(
                    'Discount only \n valid for today ',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
