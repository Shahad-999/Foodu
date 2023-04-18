import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../../../core/widgets/search_bar.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;

  const SearchAppBar({Key? key, this.title, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only( left: 24.w),
          icon : SvgPicture.asset(
            'assets/svg/back_arrow.svg',
            colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground,BlendMode.srcIn),
            semanticsLabel: 'Label',
            width: 28,
            height: 28,
          ),
          alignment: Alignment.center,
          onPressed: () { Get.back(); },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        title:
          SearchBar(
            onClickSearch: (_) => {},
            widthPadding: 16.w,
          ),
        actions: actions,
        elevation: 0,
        leadingWidth: 48.w,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72);
}