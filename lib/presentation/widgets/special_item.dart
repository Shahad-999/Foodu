import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../config/routes.dart';

class SpecialItem extends StatelessWidget {
  const SpecialItem({super.key, this.backgroundColor});

  final Color? backgroundColor;

  _clickSpecialItem() {
    Get.toNamed(Routes.restaurantRoute, arguments: {Arguments.restaurantId: 'SS'});
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
            color: backgroundColor ?? Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(36),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 24.h, left: 24.w),
                        child: Text(
                          '30%',
                          style: TextStyle(
                              fontSize: 64.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        )),
                    Text(
                      'Discount only \n valid for today ',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    )
                  ],
                ),
              ),
              Expanded(flex: 1, child: Image.asset('assets/images/burger.png'))
            ],
          ),
        ),
      ),
    );
  }
}
