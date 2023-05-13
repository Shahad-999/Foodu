import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/navigation_bar.dart';

import '../widgets/edit_profile_body.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: const NavigationAppBar(title: 'Profile'),
      body: EditProfileBody(),
    );
  }
}
