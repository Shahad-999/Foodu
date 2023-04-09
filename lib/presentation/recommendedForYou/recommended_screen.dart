import 'package:flutter/material.dart';
import 'package:foodu/presentation/recommendedForYou/widgets/recommended_body.dart';

import '../widgets/navigation_bar.dart';

class RecommendedScreen extends StatelessWidget {
  const RecommendedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: const NavigationAppBar(title: 'Recommended For You 😍'),
      body:  const RecommendedBody(),
    );
  }
}
