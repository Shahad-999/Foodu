import 'package:flutter/cupertino.dart';
import 'package:foodu/core/widgets/special_item.dart';
import 'package:foodu/features/explore/presentation/controllers/special_offer_controller.dart';
import 'package:get/get.dart';


class SpecialOffersBody extends StatelessWidget {
   SpecialOffersBody({Key? key}) : super(key: key);

   final SpecialOfferController _specialOfferController = Get.find();

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(top: 16),
      child: Obx(() => ListView.builder(
            itemCount: _specialOfferController.specialOffers.length,
            itemBuilder: (context,index){
              return Padding(
                padding:  const EdgeInsets.only(top: 8,bottom: 8,left: 24),
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
