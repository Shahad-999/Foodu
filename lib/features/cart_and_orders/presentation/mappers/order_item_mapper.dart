import 'package:foodu/features/cart_and_orders/domain/models/order.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/order_ui.dart';

extension OrderItemDomainMapper on OrderItem {
  OrderUi toOrderUiModel() {
    return OrderUi(id: id,
        mealName: name,
        imageUrl: imageUrl,
        distance: '$distance km',
        price: '\$$price',
        quantity: '$quantity items'
    );
  }
}

extension ListOrderItemDomainMapper on List<OrderItem> {
  List<OrderUi> toOrderUiModel() {
    return map((e) => e.toOrderUiModel()).toList();
  }
}