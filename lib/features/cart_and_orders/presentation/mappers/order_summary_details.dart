import 'package:foodu/features/cart_and_orders/domain/models/order_summary.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/order_summary_ui.dart';

extension OrderSummaryDomainMapper on OrderSummary {
  OrderSummaryUi toUiModel() {
    return OrderSummaryUi(
        id: id,
        orders: orders.toUiModel(),
        subtotal: '\$$subtotal',
        deliveryFee: '\$$deliveryFee',
        total: '\$${subtotal + deliveryFee}');
  }
}


extension OrderMealDomainMapper on OrderMeal {
  OrderMealUi toUiModel() {
    return OrderMealUi(
        id: id,
        name: name,
        imageUrl: imageUrl,
        price: '\$$price',
        quantity: '${quantity}x');
  }
}

extension ListOrderMealDomainMapper on List<OrderMeal> {
  List<OrderMealUi> toUiModel() {
    return map((e) => e.toUiModel()).toList();
  }
}
