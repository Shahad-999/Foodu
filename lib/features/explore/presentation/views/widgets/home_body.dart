import 'package:flutter/cupertino.dart';
import 'package:foodu/core/widgets/search_bar.dart';
import 'package:foodu/features/explore/presentation/views/widgets/recommended_section.dart';
import 'package:foodu/features/explore/presentation/views/widgets/special_offer_section.dart';
import 'package:get/get.dart';

import '../../../../../core/config/routes.dart';
import 'categories_section.dart';
import 'discount_guaranteed_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  _navToSearchBar(String keyWord) {
    Get.toNamed(Routes.searchRoute,
        arguments: {Arguments.searchKeyWord: keyWord});
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 8),
        SearchBar(onClickSearch: (keyWord) => _navToSearchBar(keyWord),),
        const SizedBox(height: 16),
        SpecialOffersSection(),
        CategoriesSection(numberOfCategories: 8 ),
        DiscountGuaranteedSection(),
        RecommendedSection()
      ],
    );
  }
}
