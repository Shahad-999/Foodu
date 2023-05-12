import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;

  const ProfileAppBar({Key? key, this.title, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only( left: 24),
        child: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/images/logo_foodu.png')),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text(
        'Profile',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: 0,
      leadingWidth: 56
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}