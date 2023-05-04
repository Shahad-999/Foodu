import 'package:flutter/material.dart';

class OrderSummaryView extends StatelessWidget {
  const OrderSummaryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Order Summary',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Divider(
              thickness: 1.5,
            ),
            const SizedBox(height: 8),
            ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Divider(),
                  );
                },
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset('assets/images/salad.png')),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mixed Vegetable Salad',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                              maxLines: 1,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '\$2.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  '1x',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontWeight: FontWeight.w900),
                                ),
                              )),
                          SizedBox(
                              height: 32,
                              width: 32,
                              child: Center(
                                  child: Icon(
                                Icons.edit,
                                color: Theme.of(context).colorScheme.primary,
                                    size: 16,
                              )))
                        ],
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
