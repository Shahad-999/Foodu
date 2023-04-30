import 'package:dartz/dartz.dart';
import 'package:foodu/core/base/base_use_case.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/restaurant_and_food/domain/food_repository.dart';

import '../models/menu.dart';

class RestaurantMenusUseCase extends BaseUseCase<List<Menu>,String>{

  final FoodRepository _repository;
  RestaurantMenusUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, List<Menu>>> call([String? param]) {
    return _repository.getMenus(param ?? 'id');
  }

}