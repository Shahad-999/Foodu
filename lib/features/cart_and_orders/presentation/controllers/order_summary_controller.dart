import 'package:foodu/core/config/routes.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/cart_and_orders/presentation/mappers/order_summary_details.dart';
import 'package:get/get.dart';

import '../../domain/usecases/order_summary_use_case.dart';
import '../states/order_summary_state.dart';

class OrderController extends GetxController {
  final OrderSummaryUseCase _orderUseCase;
  final state = Rx<OrderSummaryState>(InitialOrderSummaryState());
  final orderId = Get.arguments[Arguments.orderId];

  OrderController() : _orderUseCase = getIt.get();

  getOrderSummaryDetails() {
    state.value = LoadingOrderSummaryState();
    _orderUseCase.call(orderId).then((respond) {
      respond.fold((l) => state.value = FailOrderSummaryState(l.message),
          (items) {
        state.value = LoadedOrderSummaryState(items.toUiModel());
      });
    });
  }

  onClickAddToBasket() {
    //TODO LATER WITH ANOTHER USE CASE
  }
}
