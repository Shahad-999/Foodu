import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/cart_and_orders/domain/order_repository.dart';

class CancelOrderUseCase {

  final OrdersRepository _repository;
  CancelOrderUseCase() : _repository = getIt.get();

  Future sentCancelOrder({required String message,required  String orderId}) {
    return _repository.sentCancelOrderReason(message,orderId);
  }

}