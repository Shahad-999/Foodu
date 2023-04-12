import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key, required this.buttonText, required this.onTap}) : super(key: key);

  final String buttonText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(100)),
          child: Center(
            child:  Text(
              buttonText,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                decoration: TextDecoration.none
              ),
            ),
          ),
        ),
      ),
    );
  }
}
