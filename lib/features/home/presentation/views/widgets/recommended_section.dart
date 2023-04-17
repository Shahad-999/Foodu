import 'package:flutter/material.dart';
import 'package:foodu/core/config/routes.dart';
import 'package:foodu/features/home/presentation/views/widgets/recommended_with_chips.dart';
import 'package:get/get.dart';

import 'header_section.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection  ({super.key});

 _onClickSeeAll(){
   Get.toNamed(Routes.recommendedRoute,);
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          HeaderSection(
              headerTitle: 'Recommended For You 👌',
              onClickSeeAll: _onClickSeeAll
          ),
          RecommendedWithChips()
        ],
      );
  }
}