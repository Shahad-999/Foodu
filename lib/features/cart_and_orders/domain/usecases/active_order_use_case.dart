import 'package:dartz/dartz.dart';
import 'package:foodu/core/base/base_use_case.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/cart_and_orders/domain/order_repository.dart';

import '../models/order.dart';

class ActiveOrdersUseCase extends BaseUseCase<List<OrderItem>, NoParam> {
  final OrdersRepository _repository;

  ActiveOrdersUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, List<OrderItem>>> call([NoParam? param]) {
    return _repository.getActiveOrders();
  }


}
