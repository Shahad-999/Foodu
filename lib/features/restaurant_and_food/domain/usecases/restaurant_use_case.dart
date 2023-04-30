import 'package:dartz/dartz.dart';
import 'package:foodu/core/base/base_use_case.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/restaurant_and_food/domain/food_repository.dart';
import 'package:foodu/features/restaurant_and_food/domain/models/restaurant.dart';

class RestaurantDetailsUseCase extends BaseUseCase<Restaurant,String>{

  final FoodRepository _repository;
  RestaurantDetailsUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, Restaurant>> call([String? param]) {
    return _repository.getRestaurantDetails(param ?? 'id');
  }

}