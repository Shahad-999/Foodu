import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderActionButtons extends StatelessWidget {
  const OrderActionButtons({Key? key, required this.focusButtonText, required this.unFocusButtonText}) : super(key: key);
  final String focusButtonText ;
  final String unFocusButtonText ;

  //ToDO later pass on tap functions
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Text(
                    unFocusButtonText,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),
                  ).marginSymmetric(horizontal: 8,vertical: 8),
                )),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Text(
                    focusButtonText,
                    style:
                    Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 14
                    ),
                  ),
                ).marginSymmetric(horizontal: 8, vertical: 8)),
          ),
        )
      ],
    );
  }
}
