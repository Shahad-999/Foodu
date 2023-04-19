import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/core/fake_data/fake_restaurant.dart';
import 'package:foodu/features/restaurant_and_food/domain/food_repository.dart';
import 'package:foodu/features/restaurant_and_food/domain/models/restaurant.dart';

class FakeFoodRepository extends FoodRepository{

  @override
  Future<Either<Failure, Restaurant>> getRestaurantDetails(String restaurantId) async {
    await Future.delayed(const Duration(seconds: 2));
    return right(fakeOpenRestaurant);
  }

}