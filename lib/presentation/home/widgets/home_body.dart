import 'package:flutter/cupertino.dart';
import 'package:foodu/presentation/home/widgets/discount_guaranteed_section.dart';
import 'package:foodu/presentation/home/widgets/recommended_section.dart';
import 'package:foodu/presentation/widgets/search_bar.dart';
import 'package:foodu/presentation/home/widgets/special_offer_section.dart';
import 'package:go_router/go_router.dart';
import 'package:size_config/size_config.dart';

import '../../../config/routes.dart';
import '../../widgets/categories_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  _navToSearchBar(BuildContext context,String keyWord){
    GoRouter.of(context).push(AppRouter.searchParam(keyWord));
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        SizedBox(height: 8.h,),
        Hero(
          tag: 'search',
          child: SearchBar(
            onClickSearch: (keyWord) => _navToSearchBar(context, keyWord),
          ),
        ),
        SizedBox(height: 16.h,),
        const SpecialOffersSection(),
         CategoriesSection(
          onTapItem: (id,title){
            GoRouter.of(context).push(AppRouter.categoryDetailsParam(id,title));
          },
        ),
        const DiscountGuaranteedSection(),
        const RecommendedSection()
      ],
    );
  }
}
