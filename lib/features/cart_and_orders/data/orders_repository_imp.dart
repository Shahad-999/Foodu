import 'package:dartz/dartz.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/cart_and_orders/data/data_sources/remote_order_data_source.dart';
import 'package:foodu/features/cart_and_orders/data/mappers/cart_mapper.dart';
import 'package:foodu/features/cart_and_orders/data/mappers/order_mapper.dart';
import 'package:foodu/features/cart_and_orders/data/mappers/order_summary_mapper.dart';
import 'package:foodu/features/cart_and_orders/domain/models/cart_item.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order_summary.dart';

import '../domain/order_repository.dart';

class OrdersRepositoryImp extends OrdersRepository {
  final RemoteOrdersDataSource _remoteOrdersDataSource;

  OrdersRepositoryImp() : _remoteOrdersDataSource = getIt.get();

  @override
  Future<Either<Failure, OrderSummary>> getOrderSummary(String orderId) async {
    try {
      final data = await _remoteOrdersDataSource.getOrderSummary(orderId);
      return right(data.toModel());
    } catch (l) {
      return left(Failure('no internet'));
    }
  }

  @override
  Future<Either<Failure, List<CartItem>>> getCartContent() async {
    try {
      final data = await _remoteOrdersDataSource.getCartContent();
      return right(data.toModel());
    } catch (l) {
      return left(Failure('no internet'));
    }
  }

  @override
  Future sentCancelOrderReason(String message, String orderId) async {
    return await _remoteOrdersDataSource.sentCancelOrderReason(
        message, orderId);
  }

  @override
  Future sentDriverRating(
      {required double rating, required String orderId}) async {
    return await _remoteOrdersDataSource.sentRating('driver', orderId, rating);
  }

  @override
  Future sentOrderReview(
      {required String feedback, required String orderId}) async {
    return await _remoteOrdersDataSource.sentOrderReview(feedback, orderId);
  }

  @override
  Future sentRestaurantRating(
      {required double rating, required String orderId}) async {
    return await _remoteOrdersDataSource.sentRating(
        'restaurant', orderId, rating);
  }

  @override
  Future sentOrder({required OrderSummary orderSummary}) async {
    return await _remoteOrdersDataSource.sentOrder(orderSummary.toDto());
  }

  @override
  Future<Either<Failure, List<OrderItem>>> getActiveOrders() async {
    try {
      final data = await _remoteOrdersDataSource.getActiveOrders();
      return right(data.toModel());
    } catch (l) {
      return left(Failure('no internet'));
    }
  }

  @override
  Future<Either<Failure, List<OrderItem>>> getCancelledOrders() async {
    try {
      final data = await _remoteOrdersDataSource.getCancelledOrders();
      return right(data.toModel());
    } catch (l) {
      return left(Failure('no internet'));
    }
  }

  @override
  Future<Either<Failure, List<OrderItem>>> getCompletedOrders() async {
    try {
      final data = await _remoteOrdersDataSource.getCompletedOrders();
      return right(data.toModel());
    } catch (l) {
      return left(Failure('no internet'));
    }
  }
}
