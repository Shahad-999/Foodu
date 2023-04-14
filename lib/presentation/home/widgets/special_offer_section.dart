import 'package:flutter/material.dart';
import 'package:foodu/presentation/widgets/special_item.dart';
import 'package:foodu/config/routes.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import 'header_section.dart';

class SpecialOffersSection extends StatelessWidget {
  const SpecialOffersSection({super.key});


  _onClickSeeAll(){
    Get.toNamed(Routes.specialOffersRoute);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: Column(
        children: [
          HeaderSection(
            headerTitle: 'Special Offers',
            onClickSeeAll: _onClickSeeAll
          ),
          SizedBox(
            height: 178.h,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 8.h,left: 24.w),
              shrinkWrap: true,
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                 return const SpecialItem();
              }
              ),
          )
        
        ],
      ),
    );
  }
}