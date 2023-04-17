import 'package:flutter/material.dart';
import 'package:foodu/features/home/presentation/views/widgets/special_offers_body.dart';

import '../../../../core/widgets/navigation_bar.dart';

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
