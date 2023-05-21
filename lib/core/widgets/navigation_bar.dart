import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String? title;
  final List<Widget>? actions;
  const NavigationAppBar({Key? key, this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        padding: const EdgeInsets.only(top: 16, left: 24),
        icon : SvgPicture.asset(
            'assets/svg/back_arrow.svg',
            colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground,BlendMode.srcIn),
            semanticsLabel: 'Label',
          width: 28,
          height: 28,
        ),
        onPressed: () { Get.back(); },
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      title: title != null ? Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(
          title!,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ) : null ,
      actions: actions,
      elevation: 0,
      leadingWidth: 56,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}