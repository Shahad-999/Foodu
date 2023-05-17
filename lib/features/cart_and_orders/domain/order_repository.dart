import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order_summary.dart';

import 'models/cart_item.dart';


abstract class OrdersRepository{
  Future<Either<Failure,OrderSummary>> getOrderSummary(String orderId);
  Future<Either<Failure,List<CartItem>>> getCartContent();
}