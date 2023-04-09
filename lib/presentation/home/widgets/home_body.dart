import 'package:flutter/cupertino.dart';
import 'package:foodu/presentation/home/widgets/discount_guaranteed_section.dart';
import 'package:foodu/presentation/home/widgets/recommended_section.dart';
import 'package:foodu/presentation/home/widgets/search_bar.dart';
import 'package:foodu/presentation/home/widgets/special_offer_section.dart';
import 'package:go_router/go_router.dart';
import 'package:size_config/size_config.dart';

import '../../../routing/routes.dart';
import '../../categories/widgets/categories_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        SizedBox(height: 8.h,),
        const HomeSearchBar(),
        SizedBox(height: 16.h,),
        const SpecialOffersSection(),
         CategoriesSection(
          onTapMore: (){
            GoRouter.of(context).push(AppRouter.categoriesRoute);
          },
        ),
        const DiscountGuaranteedSection(),
        const RecommendedSection()
      ],
    );
  }
}
