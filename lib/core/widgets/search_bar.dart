import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import '../utils/constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key, required this.onClickSearch, this.widthPadding}) : super(key: key);
  final Function(String) onClickSearch;
  final double? widthPadding;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: searchTag,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: widthPadding ?? 24.w),
        child: Container(
          height: 56.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.secondary
          ),
          child: Material(
            color: Colors.transparent,
            child: Center(
              child: TextField(
                onSubmitted: onClickSearch,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Theme.of(context).colorScheme.onSecondary,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'What are you craving ? ',
                  hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 15.sp,
                  ),
                  prefixIcon: Icon(
                      Icons.search_outlined,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ),
            ),
          ),
      )
      ),
    );
  }
}
