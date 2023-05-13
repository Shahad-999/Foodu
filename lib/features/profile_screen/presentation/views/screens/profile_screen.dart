import 'package:flutter/material.dart';
import 'package:foodu/features/profile_screen/presentation/views/widgets/profile_app_bar.dart';
import 'package:foodu/features/profile_screen/presentation/views/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const ProfileBody(),
    );
  }
}
