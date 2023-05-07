import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrdersBody extends StatelessWidget {
  const OrdersBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
        Center(child: Text('Active')),
        Center(child: Text('Completed')),
        Center(child: Text('Canceled')),
      ]);
  }
}
