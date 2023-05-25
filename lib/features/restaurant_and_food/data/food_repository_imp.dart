import 'package:dartz/dartz.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/restaurant_and_food/data/models/menu_mapper.dart';
import 'package:foodu/features/restaurant_and_food/data/models/restaurant_mapper.dart';
import 'package:foodu/features/restaurant_and_food/domain/food_repository.dart';
import 'package:foodu/features/restaurant_and_food/domain/models/menu.dart';
import 'package:foodu/features/restaurant_and_food/domain/models/restaurant.dart';

import 'data_sources/remote_food_data_source.dart';

class FoodRepositoryImp extends FoodRepository{
  final RemoteFoodDataSource _remoteFoodDataSource;

  FoodRepositoryImp() : _remoteFoodDataSource = getIt.get();

  @override
  Future<Either<Failure, Restaurant>> getRestaurantDetails(String restaurantId) async {
    try {
      final data = await _remoteFoodDataSource.getRestaurant(restaurantId);
      return right(data.toModel());
    } catch (l) {
      return left(Failure('no internet'));
    }
  }

  @override
  Future<Either<Failure, List<Menu>>> getMenus(String restaurantId) async{
    try {
      final data = await _remoteFoodDataSource.getMenus(restaurantId);
      return right(data.toModel());
    } catch (l) {
      return left(Failure('no internet'));
    }
  }

}