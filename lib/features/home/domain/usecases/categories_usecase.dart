
import 'package:foodu/core/config/service_locator.dart';

import '../models/category.dart';
import '../repository.dart';

class CategoriesUseCase{
  final Repository _repository;
  CategoriesUseCase() : _repository = getIt.get();

  Future<List<Category>> getCategories() {
    return _repository.getCategories();
  }

}