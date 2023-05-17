import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/utils/api_service.dart';
import 'package:foodu/features/explore/data/models/meal_dto.dart';
import 'package:foodu/features/explore/data/models/special_offer_dto.dart';

import '../models/category_dto.dart';

class RemoteExploreDataSource {
  final ApiService _apiService;

  RemoteExploreDataSource(): _apiService = getIt.get();

  static const String _categoryIdKey = 'category_id';
  static const String _searchKeyWordKey = 'search';
  static const String _discountEndPoint = '72f094cd-b8b3-4222-a75f-9559d2eea51b';
  static const String _recommendedEndPoint = '3b4cbd55-27a5-4f31-9ea8-44bfad7ac21e';
  static const String _specialOfferEndPoint = 'ded0ccf9-b9f9-4bd8-b8a9-599977c74051';
  static const String _categoryEndPoint = 'a3e78f2a-fb31-4133-afef-3645f9fe2b03';
  static const String _searchEndPoint = '05ec8f91-1034-4dd5-a5d7-01b98de54571';

  Future<List<MealDto>> getDiscount() async {
    final  data = await _apiService.get(endPoint: _discountEndPoint);
    List<MealDto> meals = [];
    for (var item in data) {
      meals.add(MealDto.fromJson(item));
    }
    return meals;
  }

  Future<List<MealDto>> getRecommended(String categoryId) async {
    final data = await _apiService.get(
        endPoint: _recommendedEndPoint,
      queryParameters:  {
          _categoryIdKey: categoryId
      }
    );
    List<MealDto> meals = [];
    for (var item in data) {
      meals.add(MealDto.fromJson(item));
    }
    return meals;
  }

  Future<List<SpecialOfferDto>> getSpecialOffers() async {
    final data = await _apiService.get(endPoint: _specialOfferEndPoint);
    List<SpecialOfferDto> offers = [];
    for (var item in data) {
      offers.add(SpecialOfferDto.fromJson(item));
    }
    return offers;
  }

  Future<List<CategoryDto>> getCategories() async {
    final data = await _apiService.get(endPoint: _categoryEndPoint);
    List<CategoryDto> categories = [];
    for (var item in data) {
      categories.add(CategoryDto.fromJson(item));
    }
    return categories;
  }

  Future<List<MealDto>> search(String keyWord) async {
    final data = await _apiService.get(
        endPoint: _searchEndPoint,
      queryParameters: {
          _searchKeyWordKey : keyWord
      }
    );
    List<MealDto> meals = [];
    for (var item in data) {
      meals.add(MealDto.fromJson(item));
    }
    return meals;
  }


}
