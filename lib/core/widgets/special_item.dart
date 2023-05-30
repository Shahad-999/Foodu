import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/explore/presentation/model/special_offer_ui.dart';
import '../config/routes.dart';

class SpecialItem extends StatelessWidget {
  const SpecialItem({super.key, required this.specialOffer});

  final SpecialOfferUi specialOffer;

  _clickSpecialItem() {
    Get.toNamed(Routes.restaurantRoute,
        arguments: {Arguments.restaurantId: '1'});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: GestureDetector(
        onTap: _clickSpecialItem,
        child: Container(
          height: 178,
          width: MediaQuery.of(context).size.width - 48,
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
                    width: 180,
                    child: CachedNetworkImage(
                      imageUrl: specialOffer.imageUrl,
                      alignment: Alignment.centerRight,
                    ),
                  )),
              Positioned(
                  top: 24,
                  left: 40,
                  child: Text(
                    '${specialOffer.percentage}%',
                    style: const TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  )),
              const Positioned(
                  top: 100,
                  left: 40,
                  child: Text(
                    'Discount only \n valid for today ',
                    style: TextStyle(
                      fontSize: 18,
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
