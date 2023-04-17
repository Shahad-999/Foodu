import 'package:flutter/material.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import 'package:foodu/core/config/routes.dart';
import 'package:foodu/core/config/app_theme.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeConfigInit(
      referenceHeight: 926,
      referenceWidth: 428,
      builder: (BuildContext context, Orientation orientation) {
        return Builder(
          builder: (context) => GetMaterialApp(
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.system,
            initialRoute: AppRoutes.initialPage,
            getPages: AppRoutes.pages,
          ),
        );
      },
    );

  }
}
