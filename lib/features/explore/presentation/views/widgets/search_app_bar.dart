import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../core/widgets/search_bar.dart' as appbar;

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? keyword;
  final List<Widget>? actions;
  final Function(String) onClickSearch;
  const SearchAppBar({Key? key, this.keyword, this.actions, required this.onClickSearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only( left: 24),
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
          appbar.SearchBar(
            onClickSearch: onClickSearch,
            widthPadding: 16,
            keyword: keyword,
          ),
        actions: actions,
        elevation: 0,
        leadingWidth: 48,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72);
}
