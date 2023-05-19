import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:foodu/core/widgets/special_item.dart';
import 'package:foodu/features/explore/presentation/controllers/special_offer_controller.dart';
import 'package:get/get.dart';

import 'header_section.dart';

class SpecialOffersSection extends StatelessWidget {
  SpecialOffersSection({super.key});

  final SpecialOfferController _specialOfferController = Get.find();

  _onClickSeeAll(){
    Get.toNamed(Routes.specialOffersRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
    _specialOfferController.specialOffers.isEmpty ? Container()
        : SizedBox(
        height: 230,
        child: Column(
          children: [
            HeaderSection(
              headerTitle: 'Special Offers',
              onClickSeeAll: _onClickSeeAll
            ),
            SizedBox(
              height: 178,
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 8,left: 24),
                shrinkWrap: true,
                itemCount: _specialOfferController.specialOffers.take(3).length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                   return SpecialItem(
                     specialOffer: _specialOfferController.specialOffers[index],
                   );
                }
                ),
            )
          ],
        ),
      ),
    );
  }
}