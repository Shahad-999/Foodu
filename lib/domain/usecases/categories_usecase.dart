
import 'package:foodu/config/service_locator.dart';
import 'package:foodu/domain/models/category.dart';

import '../repository.dart';

class CategoriesUseCase{
  final Repository _repository;
  CategoriesUseCase() : _repository = getIt.get();

  Future<List<Category>> getCategories() {
    return _repository.getCategories();
  }

}