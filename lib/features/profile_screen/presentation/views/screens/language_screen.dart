import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/navigation_bar.dart';
import 'package:foodu/features/profile_screen/presentation/views/widgets/language_body.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: const NavigationAppBar(title: 'Language'),
      body: const LanguageBody(),
    );
  }
}
