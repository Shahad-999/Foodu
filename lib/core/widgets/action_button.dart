import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: Theme.of(context).colorScheme.tertiary,
              width: 2,
            )),
        child: Center(
          child: SvgPicture.asset(
            icon,
            semanticsLabel: '',
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
