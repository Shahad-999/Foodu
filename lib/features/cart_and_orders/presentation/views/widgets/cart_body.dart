import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/cart_controller.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/cart_item_ui.dart';
import 'package:foodu/features/cart_and_orders/presentation/states/cart_state.dart';
import 'package:get/get.dart';

import 'cart_item.dart';

class CartBody extends StatelessWidget {
  CartBody({Key? key}) : super(key: key);
  CartController controller = Get.put(CartController()..fetchCartContent());

  Widget getWidgetState(CartState state, BuildContext context) {
    switch (state.runtimeType) {
      case LoadingCartState:
        {
          return const Center(child: CircularProgressIndicator());
        }
      case LoadedCartState:
        {
          return onLoadedData(context, (state as LoadedCartState).data);
        }
      case FailCartState:
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
    return Obx(() => getWidgetState(controller.state.value, context));
  }

  Widget onLoadedData(BuildContext context, List<CartItemUi> data) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: data.length,
          itemBuilder: (context,index){
            return CartItem(item: data[index]);
          }
      ),
    );
  }
}
