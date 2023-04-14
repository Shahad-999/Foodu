import 'package:flutter/cupertino.dart';
import 'package:foodu/presentation/home/view/widgets/recommended_section.dart';
import 'package:foodu/presentation/home/view/widgets/special_offer_section.dart';
import 'package:foodu/presentation/widgets/search_bar.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../../../config/routes.dart';
import '../../../widgets/categories_section.dart';
import '../../controller/home_controller.dart';
import 'discount_guaranteed_section.dart';


class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();
  _navToSearchBar(String keyWord){
      Get.toNamed(
          Routes.searchRoute,
          arguments: {
            Arguments.searchKeyWord : keyWord
          }
      );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        SizedBox(height: 8.h,),
        Hero(
          tag: 'search',
          child: SearchBar(
            onClickSearch: (keyWord) => _navToSearchBar(keyWord),
          ),
        ),
        SizedBox(height: 16.h,),
        const SpecialOffersSection(),
        Obx(
                () =>CategoriesSection(
                  categories: homeController.categories,
                  numberOfCategories:  homeController.categories.isNotEmpty ? 8 :0,
                )
        )
        ,
        const DiscountGuaranteedSection(),
        const RecommendedSection()
      ],
    );
  }
}
