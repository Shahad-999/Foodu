import 'package:flutter/cupertino.dart';
import 'package:foodu/core/widgets/special_item.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../manger/special_offer_controller.dart';

class SpecialOffersBody extends StatelessWidget {
   SpecialOffersBody({Key? key}) : super(key: key);

   final SpecialOfferController _specialOfferController = Get.find();

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child: Obx(() => ListView.builder(
            itemCount: _specialOfferController.specialOffers.length,
            itemBuilder: (context,index){
              return Padding(
                padding:  EdgeInsets.only(top: 8.h,bottom: 8.h,left: 24.w),
                child:  SpecialItem(
                  specialOffer: _specialOfferController.specialOffers[index],
                ),
              );
            }
        ),
      ),
    );
  }
}
