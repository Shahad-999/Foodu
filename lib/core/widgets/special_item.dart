import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../features/explore/presentation/model/special_offer_ui.dart';
import '../config/routes.dart';

class SpecialItem extends StatelessWidget {
  const SpecialItem({super.key, required this.specialOffer});
  final SpecialOfferUi specialOffer;

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
                  right: 16,
                  child: SizedBox(
                    width: 180.w,
                    child: Image.network(
                      specialOffer.imageUrl,
                      alignment: Alignment.centerRight,
                    ),
                  )),
              Positioned(
                  top: 24.h,
                  left: 40.w,
                  child: Text(
                    '${specialOffer.percentage}%',
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
