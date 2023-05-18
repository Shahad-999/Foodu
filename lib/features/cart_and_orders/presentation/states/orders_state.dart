import 'package:foodu/features/cart_and_orders/presentation/models/order_ui.dart';

class OrdersState {
  OrdersState._();

  factory OrdersState.success(List<OrderUi> orders) = LoadedOrdersState;

  factory OrdersState.initial() = InitialOrdersState;

  factory OrdersState.loading() = LoadingOrdersState;

  factory OrdersState.error(String message) = FailOrdersState;
}

class InitialOrdersState extends OrdersState {
  InitialOrdersState() : super._();
}

class LoadingOrdersState extends OrdersState {
  LoadingOrdersState() : super._();
}

class EmptyOrdersState extends OrdersState {
  EmptyOrdersState() : super._();
}

class LoadedOrdersState extends OrdersState {
  final List<OrderUi> data;

  LoadedOrdersState(this.data) : super._();
}

class FailOrdersState extends OrdersState {
  final String message;

  FailOrdersState(this.message) : super._();
}
