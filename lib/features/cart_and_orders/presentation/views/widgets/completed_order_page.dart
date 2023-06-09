import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/active_order_controller.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/completed_order_controller.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/order_ui.dart';
import 'package:foodu/features/cart_and_orders/presentation/states/orders_state.dart';
import 'package:get/get.dart';

import 'completed_order_item_view.dart';

class CompletedOrderPage extends StatelessWidget {
  CompletedOrderPage({Key? key}) : super(key: key);

  final CompletedOrderController _controller = Get.find();

  Widget getWidgetState(OrdersState state, BuildContext context) {
    switch (state.runtimeType) {
      case LoadingOrdersState:
        {
          return const Center(child: CircularProgressIndicator());
        }
      case LoadedOrdersState:
        {
          return onLoadedData(context, (state as LoadedOrdersState).data);
        }
      case FailOrdersState :
        {
          return Center(
              child: SvgPicture.asset(
                'assets/svg/fail.svg',
                semanticsLabel: '',
              ));
        }
      case EmptyOrdersState :
        {
          return Center(
              child: SvgPicture.asset(
                'assets/svg/empty.svg',
                semanticsLabel: '',
              ));
        }
      default:
        {
          return Container();
        }
    }
  }


  Future onRefresh() async{
    Get.find<ActiveOrderController>().fetchOrders();
    Get.find<CompletedOrderController>().fetchOrders();
    return await _controller.fetchOrders();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => RefreshIndicator(
      onRefresh: onRefresh,
      child: getWidgetState(_controller.orders.value, context))
      );
  }

  Widget onLoadedData(BuildContext context, List<OrderUi> data) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,index){
            return CompletedOrderItemView(order: data[index])
                .marginSymmetric(vertical: 8, horizontal: 24);

          }
      ),
    );
  }

}
