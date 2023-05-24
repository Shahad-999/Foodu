import 'package:foodu/features/cart_and_orders/data/models/order_meal_dto.dart';
import 'package:foodu/features/cart_and_orders/data/models/order_summary_dto.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order_summary.dart';

extension OrderSummaryDataMapper on OrderSummaryDto {
  OrderSummary toModel() {
    return OrderSummary(
        id: id ?? '',
        orders: orders?.toModel() ?? [],
        subtotal: subtotal ?? 0.0,
        deliveryFee: deliveryFee ?? 0.0);
  }
}

extension OrderMealDataMapper on OrderMealDto {
  OrderMeal toModel() {
    return OrderMeal(
        id: id ?? '',
        quantity: quantity ?? 0,
        price: price ?? 0.0,
        imageUrl: imageUrl ?? '',
        name: name ?? 'No Name');
  }
}

extension ListOrderMealDataMapper on List<OrderMealDto> {
  List<OrderMeal> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension OrderSummaryDtoDataMapper on OrderSummary {
  OrderSummaryDto toDto() {
    return OrderSummaryDto(
        id: id,
        orders: orders.toModel(),
        subtotal: subtotal ,
        deliveryFee: deliveryFee );
  }
}

extension OrderMealDtoDataMapper on OrderMeal {
  OrderMealDto toDto() {
    return OrderMealDto(
        id: id,
        quantity: quantity,
        price: price,
        imageUrl: imageUrl,
        name: name);
  }
}

extension ListOrderMealDtoDataMapper on List<OrderMeal> {
  List<OrderMealDto> toModel() {
    return map((e) => e.toDto()).toList();
  }
}
