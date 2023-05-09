import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralOrderDetailsItem extends StatelessWidget {
  const GeneralOrderDetailsItem(
      {Key? key,
      this.labelDecoration,
      required this.labelText,
      this.labelColor})
      : super(key: key);

  final Decoration? labelDecoration;
  final String labelText;
  final Color? labelColor;
  //TODO later pass info

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: SizedBox(
                height: 120,
                width: 120,
                child: Image.asset('assets/images/salad.png'))),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              'Bite Me Sandwiches',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 12),
            Text(
              '3 items - 1.4 km',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.w500, fontSize: 14),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  '\$32.00',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
                const SizedBox(width: 16),
                Container(
                    decoration: labelDecoration ??
                        BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(labelText,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: labelColor ?? Colors.white))
                          .marginSymmetric(horizontal: 8, vertical: 6),
                    )),
              ],
            )
          ],
        )
      ],
    );
  }
}
