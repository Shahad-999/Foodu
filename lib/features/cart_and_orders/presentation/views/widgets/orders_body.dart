import 'package:flutter/material.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/cancelledI_order_item_view.dart';
import 'package:get/get.dart';

class OrdersBody extends StatelessWidget {
  const OrdersBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TabBarView(children: [
        const Center(child: Text('Active')),
        const Center(child: Text('Completed')),
        ListView.builder(
          itemCount: 6,
            itemBuilder: (context,index){
              return const CancelledOrderItemView().marginSymmetric(vertical: 8,horizontal: 24);
            }
     ),
      ]);
  }
}
