
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/cart_and_orders/domain/usecases/completed_order_use_case.dart';
import 'package:foodu/features/cart_and_orders/presentation/mappers/order_item_mapper.dart';
import 'package:foodu/features/cart_and_orders/presentation/states/orders_state.dart';
import 'package:get/get.dart';

class CompletedOrderController extends GetxController {
  final CompletedOrdersUseCase _completedOrdersUseCase;
  final orders = Rx<OrdersState>(InitialOrdersState());

  CompletedOrderController() : _completedOrdersUseCase = getIt.get();

  Future fetchOrders() {
    _completedOrdersUseCase.call().then((respond) {
      respond.fold(
              (l) => {
                orders.value = FailOrdersState(l.message)
              },
              (items) {
                if(items.isEmpty ) {
                  orders.value = EmptyOrdersState();
                } else {
                  orders.value = (LoadedOrdersState(items.toOrderUiModel()));
                }
              });
    });
    return Future((){});

  }
}
