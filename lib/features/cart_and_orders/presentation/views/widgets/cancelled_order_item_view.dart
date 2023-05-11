import 'package:flutter/material.dart';

import 'general_order_details_item.dart';

class CancelledOrderItemView extends StatelessWidget {
  const CancelledOrderItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Theme.of(context).colorScheme.secondary),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GeneralOrderDetailsItem(labelDecoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(8)),
            labelText: 'Cancelled',
            labelColor: Colors.red,
        ),
      ),
    );
  }
}
