import 'package:flutter/material.dart';
import 'package:foodu/features/onboarding/presentation/widgets/on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const OnBoardingBody(),
    );
  }
}
