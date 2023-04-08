import 'package:flutter/material.dart';
import 'package:foodu/presentation/special_offers/widgets/special_offers_body.dart';

import '../widgets/navigation_bar.dart';

class SpecialOffersScreen extends StatelessWidget {
  const SpecialOffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: const NavigationAppBar(title: 'Special Offers'),
      body:  SpecialOffersBody(),
    );
  }
}
