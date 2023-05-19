import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodu/core/widgets/app_button.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/order_summary_controller.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/order_summary_ui.dart';
import 'package:foodu/features/cart_and_orders/presentation/states/order_summary_state.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/deliver_to_view.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/order_summary_view.dart';
import 'package:get/get.dart';

import 'cost_view.dart';


class CheckoutOrdersBody extends StatelessWidget {
  CheckoutOrdersBody({Key? key}) : super(key: key);

  final OrderController _orderController =
      Get.put(OrderController()..getOrderSummaryDetails());

  Widget getWidgetState(OrderSummaryState state, BuildContext context) {
    switch (state.runtimeType) {
      case LoadingOrderSummaryState:
        {
          return const Center(child: CircularProgressIndicator());
        }
      case LoadedOrderSummaryState:
        {
          return onLoadedData(context, (state as LoadedOrderSummaryState).data);
        }
      case FailOrderSummaryState:
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
    return Obx(() => getWidgetState(_orderController.state.value, context));
  }

  Widget onLoadedData(BuildContext context, OrderSummaryUi data) {
    return Stack(
      children: [
        Positioned(
          right: 24,
          left: 24,
          top: 0,
          bottom: 0,
          child: ListView(
            padding: const EdgeInsets.only(bottom: 100, top: 24),
            children: [
              const DeliverToView(),
              const SizedBox(height: 24),
              OrderSummaryView(orders: data.orders),
              const SizedBox(height: 24),
              CostView(
                  subtotal: data.subtotal,
                  deliveryFee: data.deliveryFee,
                  total: data.total)
            ],
          ),
        ),
        Positioned(
            right: 16,
            left: 16,
            bottom: 0,
            child: AppButton(
              buttonText: 'Place order',
              onTap: () async{
                await _orderController.sentOrder();
                Get.close(2);
                
              },
            ).marginOnly(bottom: 40)),
      ],
    );
  }
}
