import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/cart_and_orders/domain/models/cart_item.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order_summary.dart';

import '../../../core/fake_data/fake_meal.dart';
import '../domain/order_repository.dart';

class FakeOrdersRepository extends OrdersRepository {
  @override
  Future<Either<Failure, OrderSummary>> getOrderSummary(String orderId) async {
    await Future.delayed(const Duration(seconds: 2));
    return right(fakeOrderSummary);
  }

  @override
  Future<Either<Failure, List<CartItem>>> getCartContent() async {
    return left(Failure('message'));
  }

  @override
  Future sentCancelOrderReason(String message) {
    // TODO: implement sentCancelOrderReason
    throw UnimplementedError();
  }

  @override
  Future sentDriverRating({required double rating, required String orderId}) {
    // TODO: implement sentDriverRating
    throw UnimplementedError();
  }

  @override
  Future sentOrderReview({required String feedback, required String orderId}) {
    // TODO: implement sentOrderReview
    throw UnimplementedError();
  }

  @override
  Future sentRestaurantRating(
      {required double rating, required String orderId}) {
    // TODO: implement sentRestaurantRating
    throw UnimplementedError();
  }

  @override
  Future addOrderToCart({required OrderSummary orderSummary}) async {
    print(orderSummary.orders);
    // TODO: implement addOrderToCart
    return Future(() {});
  }

  @override
  Future<Either<Failure, List<OrderItem>>> getActiveOrders() async {
    await Future.delayed(const Duration(seconds: 2));
    return right([
      const OrderItem(
          id: 'id',
          name: 'BUrger WOW',
          imageUrl: '',
          distance: 3.2,
          price: 6.5,
          quantity: 2)
    ]);
  }

  @override
  Future<Either<Failure, List<OrderItem>>> getCancelledOrders() async {
    await Future.delayed(const Duration(seconds: 2));
    return right([
      const OrderItem(
          id: 'id',
          name: 'BUrger WOW',
          imageUrl: '',
          distance: 3.2,
          price: 6.5,
          quantity: 2)
    ]);
  }

  @override
  Future<Either<Failure, List<OrderItem>>> getCompletedOrders() async {
    await Future.delayed(const Duration(seconds: 2));
    return right([
      const OrderItem(
          id: 'id',
          name: 'BUrger WOW',
          imageUrl: '',
          distance: 3.2,
          price: 6.5,
          quantity: 2)
    ]);
  }
}
