import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CancelledOrderItemView extends StatelessWidget {
  const CancelledOrderItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Theme.of(context).colorScheme.secondary),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/images/salad.png'),
                )
            ),
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
                const SizedBox(height: 10),
                Text(
                  '3 items - 1.4 km',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w500, fontSize: 14),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
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
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            'Cancelled',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: Colors.red,
                                    fontWeight: FontWeight.normal),
                          ).marginSymmetric(horizontal: 8,vertical: 6),
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
