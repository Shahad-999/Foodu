import 'package:flutter/material.dart';

class ButtonPicker extends StatelessWidget {
  const ButtonPicker({Key? key, required this.icon, required this.onClick})
      : super(key: key);
  final IconData icon;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 56,
        width: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Theme.of(context).colorScheme.tertiary,
              width: 2,
            )),
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.primary,
          size: 32,
        ),
      ),
    );
  }
}
