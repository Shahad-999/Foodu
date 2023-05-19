import 'package:flutter/cupertino.dart';
import 'package:foodu/features/explore/presentation/controllers/discount_controller.dart';
import 'package:get/get.dart';

import 'discount_item.dart';
import 'header_section.dart';

class DiscountGuaranteedSection extends StatelessWidget {
   DiscountGuaranteedSection({Key? key}) : super(key: key);

  final DiscountController _controller = Get.find();

  void _onClickSeeAll(BuildContext context){

  }
  @override
  Widget build(BuildContext context) {
    return Obx(()=> SizedBox(
          height: 365,
          child: Column(
            children: [
              HeaderSection(
                  headerTitle: 'Discount Guaranteed! 👌',
                  onClickSeeAll: () => _onClickSeeAll(context)
              ),
              SizedBox(
                height: 307,
                child: ListView.builder(
                    padding: const EdgeInsets.only(left: 24),
                    shrinkWrap: true,
                    itemCount: _controller.meals.take(10).length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return DiscountItem(meal: _controller.meals[index]);
                    }
                ),
              )
            ],
          ),
        )
    );
  }
}
