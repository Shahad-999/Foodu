import 'package:flutter/material.dart';
import 'package:foodu/routing/routes.dart';
import 'package:go_router/go_router.dart';

import '../../recommendedForYou/widgets/recommended_with_chips.dart';
import 'hearder_section.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection  ({super.key});

 void _onClickSeeAll(BuildContext context){
   GoRouter.of(context).push(AppRouter.recommendedRoute);
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          HeaderSection(
              headerTitle: 'Recommended For You 👌',
              onClickSeeAll: () => _onClickSeeAll(context)
          ),
          const RecommendedWithChips()
        ],
      );
  }
}