import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';

import 'models/menu.dart';
import 'models/restaurant.dart';

abstract class FoodRepository{
  Future<Either<Failure,Restaurant>> getRestaurantDetails(String restaurantId);
  Future<Either<Failure,List<Menu>>> getMenus(String restaurantId);
}