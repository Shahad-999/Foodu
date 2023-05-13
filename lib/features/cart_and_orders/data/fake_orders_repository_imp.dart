

import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order_summary.dart';

import '../../../core/fake_data/fake_meal.dart';
import '../domain/order_repository.dart';

class FakeOrdersRepository extends OrdersRepository{
  @override
  Future<Either<Failure, OrderSummary>> getOrderSummary(String orderId) async{
    await Future.delayed(const Duration(seconds: 2));
    return right(fakeOrderSummary);
  }

}