import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/active_order_controller.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/order_ui.dart';
import 'package:foodu/features/cart_and_orders/presentation/states/orders_state.dart';
import 'package:get/get.dart';

import 'active_order_item_view.dart';

class ActiveOrderPage extends StatelessWidget {
  ActiveOrderPage({Key? key}) : super(key: key);

  final ActiveOrderController _controller = Get.find();

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
                'assets/svg/fail.svg',
                semanticsLabel: '',
              ));
        }
      default:
        {
          return Container();
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => RefreshIndicator(
      onRefresh: _controller.fetchOrders,
      child: getWidgetState(_controller.orders.value, context))
      );
  }

  Widget onLoadedData(BuildContext context, List<OrderUi> data) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,index){
            return ActiveOrderItemView(order: data[index])
                .marginSymmetric(vertical: 8, horizontal: 24);

          }
      ),
    );
  }

}
