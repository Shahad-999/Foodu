import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActiveOrderItemView extends StatelessWidget {
  const ActiveOrderItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Theme.of(context).colorScheme.secondary),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
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
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Paid',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        // color: Colors.red,
                                        fontWeight: FontWeight.normal),
                              ).marginSymmetric(horizontal: 8, vertical: 6),
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
            const Divider(thickness: 1).marginSymmetric(vertical: 8),
            Row(
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
                            'Cancel Order',
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
                            'Track Driver',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                    // color: Colors.red,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14
                                ),
                          ),
                        ).marginSymmetric(horizontal: 8, vertical: 8)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
