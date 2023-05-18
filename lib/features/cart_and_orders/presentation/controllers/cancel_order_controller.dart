import 'package:foodu/features/cart_and_orders/domain/usecases/cancel_order_use_case.dart';
import 'package:foodu/features/cart_and_orders/presentation/states/cart_state.dart';
import 'package:get/get.dart';

import '../../../../core/config/service_locator.dart';

class CancelController extends GetxController {
  final CancelOrderUseCase _cancelOrderUseCase;
  final Rx<CartState> state = Rx<CartState>(InitialCartState());

  final reasons = [
    'Waiting for long time',
    'Unable to contact driver',
    'Driver denied to go to destination',
    'Driver denied to come to pickup',
    'Wrong address shown',
    'The price is not reasonable',
    'I want to order another restaurant',
    'I just want to cancel',
    'Others',
  ];

  CancelController() : _cancelOrderUseCase = getIt.get();

  sentCancelReason(int indexOfReason) async {
    await _cancelOrderUseCase.sentCancelOrder(message: reasons[indexOfReason]);
  }
}
