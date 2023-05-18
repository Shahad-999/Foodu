import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order_summary.dart';

import 'models/cart_item.dart';

abstract class OrdersRepository {
  Future<Either<Failure, OrderSummary>> getOrderSummary(String orderId);

  Future<Either<Failure, List<CartItem>>> getCartContent();

  Future sentCancelOrderReason(String message);

  Future sentOrderReview({required String feedback, required String orderId});

  Future sentRestaurantRating(
      {required double rating, required String orderId});

  Future sentDriverRating({required double rating, required String orderId});

  Future addOrderToCart({required OrderSummary orderSummary});

  Future<Either<Failure, List<OrderItem>>> getActiveOrders();

  Future<Either<Failure, List<OrderItem>>> getCompletedOrders();

  Future<Either<Failure, List<OrderItem>>> getCancelledOrders();
}
