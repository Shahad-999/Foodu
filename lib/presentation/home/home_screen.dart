import 'package:flutter/material.dart';
import 'package:foodu/presentation/home/widgets/home_app_bar.dart';
import 'package:foodu/presentation/home/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: const HomeAppBar(),
        body: const HomeBody(),
      ),
    );
  }
}
