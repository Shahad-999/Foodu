
import 'package:foodu/core/config/service_locator.dart';

import '../models/meal.dart';
import '../repository.dart';

class DiscountUseCase{
  final Repository _repository;
  DiscountUseCase() : _repository = getIt.get();

  Future<List<Meal>> getDiscount() {
    return _repository.getDiscount();
  }

}