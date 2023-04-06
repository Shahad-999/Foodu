
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foodu/presentation/home/widgets/special_item.dart';
import 'package:size_config/size_config.dart';

import 'hearder_section.dart';

class SpecialOffersSection extends StatelessWidget {
  const SpecialOffersSection({super.key});


  void _onClickSeeAll(BuildContext context){

  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: Column(
        children: [
          HeaderSection(
            headerTitle: 'Special Offers',
            onClickSeeAll: () => _onClickSeeAll(context)
          ),
          SizedBox(
            height: 178.h,
            child: ListView.builder(
        
              padding: EdgeInsets.only(top: 8.h,left: 24.w),
              shrinkWrap: true,
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                 return SpecialItem();
              }
              ),
          )
        
        ],
      ),
    );
  }
}