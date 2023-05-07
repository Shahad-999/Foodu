
 import 'package:foodu/features/cart_and_orders/presentation/models/order_summary_ui.dart';

class OrderSummaryState{
   OrderSummaryState._();
   factory OrderSummaryState.success(OrderSummaryUi orderSummary) = LoadedOrderSummaryState;
   factory OrderSummaryState.initial() = InitialOrderSummaryState;
   factory OrderSummaryState.loading() = LoadingOrderSummaryState;
   factory OrderSummaryState.error(String message) = FailOrderSummaryState;
 }

class InitialOrderSummaryState extends OrderSummaryState{
   InitialOrderSummaryState(): super._();
}
class LoadingOrderSummaryState extends OrderSummaryState{
   LoadingOrderSummaryState(): super._();
}
class LoadedOrderSummaryState extends OrderSummaryState{
  final OrderSummaryUi data;
  LoadedOrderSummaryState(this.data): super._();
}
class FailOrderSummaryState extends OrderSummaryState{
  final String message;
  FailOrderSummaryState(this.message): super._();
}
