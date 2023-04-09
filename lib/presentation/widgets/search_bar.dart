import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        height: 56.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).colorScheme.secondary
        ),
        child: Center(
          child: TextField(
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
    )
    );
  }
}
