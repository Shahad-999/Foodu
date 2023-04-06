import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import 'category_item.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      child: GridView.count(
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.8),
        shrinkWrap: true,
        crossAxisCount: 4,
        children: const [
          CategoryItem(image: 'assets/images/buger.png', title: 'Burger'),
          CategoryItem(image: 'assets/images/pizza_slice.png', title: 'Pizza'),
          CategoryItem(image: 'assets/images/noodles.png', title: 'Noddles'),
          CategoryItem(image: 'assets/images/chickn.png', title: 'Meat'),
          CategoryItem(image: 'assets/images/veg.png', title: 'Vegetable'),
          CategoryItem(image: 'assets/images/pan_cake.png', title: 'Dessert'),
          CategoryItem(image: 'assets/images/drink_glass.png', title: 'Drink'),
          CategoryItem(
              image: 'assets/images/chocolate_cake.png', title: 'More'),
        ],
      ),
    );
  }
}
