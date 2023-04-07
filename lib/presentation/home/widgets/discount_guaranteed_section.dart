import 'package:flutter/cupertino.dart';
import 'package:size_config/size_config.dart';

import 'discount_item.dart';
import 'hearder_section.dart';

class DiscountGuaranteedSection extends StatelessWidget {
  const DiscountGuaranteedSection({Key? key}) : super(key: key);

  void _onClickSeeAll(BuildContext context){

  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 365.h,
      child: Column(
        children: [
          HeaderSection(
              headerTitle: 'Discount Guaranteed! 👌',
              onClickSeeAll: () => _onClickSeeAll(context)
          ),
          SizedBox(
            height: 307.h,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 24.w),
                shrinkWrap: true,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return const DiscountItem();
                }
            ),
          )

        ],
      ),
    );
  }
}
