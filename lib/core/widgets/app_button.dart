import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key, required this.buttonText, required this.onTap, this.isFocus = true, this.padding}) : super(key: key);

  final String buttonText;
  final VoidCallback onTap;
  final bool isFocus;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: padding == null ?  const EdgeInsets.symmetric(horizontal: 16) : padding! ,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: isFocus ? Theme.of(context).colorScheme.primary :  Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: BorderRadius.circular(100)),
          child: Center(
            child:  Text(
              buttonText,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isFocus ? Colors.white :  Theme.of(context).colorScheme.primary,
                decoration: TextDecoration.none
              ),
            ),
          ),
        ),
      ),
    );
  }
}
