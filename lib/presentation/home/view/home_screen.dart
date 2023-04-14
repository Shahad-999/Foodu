import 'package:flutter/material.dart';
import 'package:foodu/presentation/home/view/widgets/home_app_bar.dart';
import 'package:foodu/presentation/home/view/widgets/home_body.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  final homeController = Get.put(HomeController()..getCategories());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const HomeAppBar(),
      body: HomeBody(),
    );
  }
}
