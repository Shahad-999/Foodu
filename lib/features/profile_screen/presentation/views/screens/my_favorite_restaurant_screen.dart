import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/navigation_bar.dart';

import '../widgets/my_favorite_restuarant_body.dart';

class MyFavoriteRestaurantScreen extends StatelessWidget {
  const MyFavoriteRestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: const NavigationAppBar(title: 'My Favorite Restaurant'),
      body: const MyFavoriteRestaurantBody(),
    );
  }
}
