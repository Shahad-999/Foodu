import 'package:dartz/dartz.dart';
import 'package:foodu/core/base/base_use_case.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/cart_and_orders/domain/models/cart_item.dart';
import 'package:foodu/features/cart_and_orders/domain/order_repository.dart';

class CartUseCase extends BaseUseCase<List<CartItem>,NoParam>{

  final OrdersRepository _repository;
  CartUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, List<CartItem>>> call([NoParam? param]) {
    return _repository.getCartContent();
  }

}