import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:size_config/size_config.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String? title;
  final List<Widget>? actions;
  const NavigationAppBar({Key? key, this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 16.h, left: 16.w),
      child: AppBar(
        leading: IconButton(
          icon : Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          onPressed: () { GoRouter.of(context).pop(); },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        title: title != null ? Text(
          title!,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ) : null ,
        actions: actions,
        elevation: 0,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}