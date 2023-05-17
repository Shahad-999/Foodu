import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/utils/api_service.dart';
import 'package:foodu/features/explore/data/models/meal_dto.dart';
import 'package:foodu/features/explore/data/models/special_offer_dto.dart';

import '../models/category_dto.dart';

class RemoteExploreDataSource {
  final ApiService _apiService;

  RemoteExploreDataSource(): _apiService = getIt.get();

  Future<List<MealDto>> getDiscount() async {
    final  data = await _apiService.get(endPoint: '72f094cd-b8b3-4222-a75f-9559d2eea51b');
    List<MealDto> meals = [];
    for (var item in data) {
      meals.add(MealDto.fromJson(item));
    }
    return meals;
  }

  Future<List<MealDto>> getRecommended(String categoryId) async {
    final data = await _apiService.get(endPoint: '3b4cbd55-27a5-4f31-9ea8-44bfad7ac21e');
    List<MealDto> meals = [];
    for (var item in data) {
      meals.add(MealDto.fromJson(item));
    }
    return meals;
  }

  Future<List<SpecialOfferDto>> getSpecialOffers() async {
    final data = await _apiService.get(endPoint: 'ded0ccf9-b9f9-4bd8-b8a9-599977c74051');
    List<SpecialOfferDto> offers = [];
    for (var item in data) {
      offers.add(SpecialOfferDto.fromJson(item));
    }
    return offers;
  }

  Future<List<CategoryDto>> getCategories() async {
    final data = await _apiService.get(endPoint: 'a3e78f2a-fb31-4133-afef-3645f9fe2b03');
    List<CategoryDto> categories = [];
    for (var item in data) {
      categories.add(CategoryDto.fromJson(item));
    }
    return categories;
  }

  Future<List<MealDto>> search(String keyWord) async {
    final data = await _apiService.get(endPoint: 'endPoint');
    List<MealDto> meals = [];
    for (var item in data) {
      meals.add(MealDto.fromJson(item));
    }
    return meals;
  }


}
