import 'package:foodu/features/cart_and_orders/data/models/OrderItem.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order.dart';

extension OrderItemDataMapper on OrderItemDto {
  OrderItem toModel() {
    return OrderItem(
        id: id ?? '',
        name: name ?? '',
        imageUrl: imageUrl ?? '',
        distance: distance?.toDouble() ?? 0.0 ,
        price: price?.toDouble() ?? 0.0,
        quantity: quantity?.toInt() ?? 0
    );
  }
}

extension ListOrderItemDataMapper on List<OrderItemDto> {
  List<OrderItem> toModel() {
    return map((e) => e.toModel()).toList();
  }
}
