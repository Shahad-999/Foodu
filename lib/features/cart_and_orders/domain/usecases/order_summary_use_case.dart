import 'package:dartz/dartz.dart';
import 'package:foodu/core/base/base_use_case.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/cart_and_orders/domain/models/order_summary.dart';
import 'package:foodu/features/cart_and_orders/domain/order_repository.dart';

class OrderSummaryUseCase extends BaseUseCase<OrderSummary,String>{

  final OrdersRepository _repository;
  OrderSummaryUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, OrderSummary>> call([String? param]) {
    return _repository.getOrderSummary(param ?? 'id');
  }

}