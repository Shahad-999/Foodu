import 'package:flutter/material.dart';
import 'package:foodu/presentation/home/widgets/recommended_item.dart';
import 'package:size_config/size_config.dart';

import 'categories_chip_list.dart';
import 'hearder_section.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection  ({super.key});

 void _onClickSeeAll(BuildContext context){

  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          HeaderSection(
              headerTitle: 'Recommended For You 👌',
              onClickSeeAll: () => _onClickSeeAll(context)
          ),
          SizedBox(
            height: 50.h,
            child: const CategoriesChipList()
          ),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
              physics: const ScrollPhysics(),
            itemBuilder: (context,index){
              return const RecommendedItem();
            }
          )

        ],
      );
  }
}