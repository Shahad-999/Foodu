
import 'package:foodu/config/service_locator.dart';
import 'package:foodu/domain/models/meal.dart';

import '../repository.dart';

class DiscountUseCase{
  final Repository _repository;
  DiscountUseCase() : _repository = getIt.get();

  Future<List<Meal>> getDiscount() {
    return _repository.getDiscount();
  }

}