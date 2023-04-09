import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import 'category_item.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({Key? key, this.onTapMore, required this.onTapItem}) : super(key: key);

  final VoidCallback? onTapMore;
  final Function(String,String) onTapItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      child: GridView.count(
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.8),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        children:  [
           CategoryItem(image: 'assets/images/buger.png', title: 'Burger',onTap: onTapItem),
           CategoryItem(image: 'assets/images/pizza_slice.png', title: 'Pizza',onTap: onTapItem),
           CategoryItem(image: 'assets/images/noodles.png', title: 'Noddles',onTap: onTapItem),
           CategoryItem(image: 'assets/images/chickn.png', title: 'Meat',onTap: onTapItem),
           CategoryItem(image: 'assets/images/veg.png', title: 'Vegetable',onTap: onTapItem),
           CategoryItem(image: 'assets/images/pan_cake.png', title: 'Dessert',onTap: onTapItem),
           CategoryItem(image: 'assets/images/drink_glass.png', title: 'Drink',onTap: onTapItem ),
          CategoryItem(image: 'assets/images/chocolate_cake.png', title: 'More',onTap: onTapItem),
        ],
      ),
    );
  }
}
