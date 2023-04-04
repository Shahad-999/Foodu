import 'package:flutter/material.dart';
import 'package:foodu/service_locator.dart';
import 'package:size_config/size_config.dart';

import 'package:foodu/routing/routes.dart';
import 'package:foodu/theme/app_theme.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeConfigInit(
      referenceHeight: 800,
      referenceWidth: 360,
      builder: (BuildContext context, Orientation orientation) {
        return Builder(
          builder: (context) => MaterialApp.router(
            routerConfig: AppRouter.router,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.system,
          ),
        );
      },
    );

  }
}
