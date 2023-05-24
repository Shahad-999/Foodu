import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/utils/api_service.dart';
import 'package:foodu/features/explore/data/models/category_dto.dart';
import 'package:foodu/features/explore/data/models/meal_dto.dart';
import 'package:foodu/features/explore/data/models/special_offer_dto.dart';

class RemoteExploreDataSource {
  final ApiService _apiService;

  RemoteExploreDataSource() : _apiService = getIt.get();

  static const String _categoryIdKey = 'category_id';
  static const String _discountEndPoint = 'discount';
  static const String _recommendedEndPoint = 'recommended';
  static const String _specialOfferEndPoint = 'specialOffer';
  static const String _categoryEndPoint = 'categories';
  static const String _searchEndPoint = 'search';

  Future<List<MealDto>> getDiscount() async {
    final data =
        await _apiService.get(endPoint: _discountEndPoint) as List<dynamic>;
    List<MealDto> meals = [];
    for (var item in data) {
      meals.add(MealDto.fromJson(item));
    }
    return meals;
  }

  Future<List<MealDto>> getRecommended(String categoryId) async {
    final data = await _apiService.get(
        endPoint: _recommendedEndPoint,
        queryParameters: {_categoryIdKey: categoryId}) as List<dynamic>;
    List<MealDto> meals = [];
    for (var item in data) {
      meals.add(MealDto.fromJson(item));
    }
    return meals;
  }

  Future<List<SpecialOfferDto>> getSpecialOffers() async {
    final data =
        await _apiService.get(endPoint: _specialOfferEndPoint) as List<dynamic>;
    List<SpecialOfferDto> offers = [];
    for (var item in data) {
      offers.add(SpecialOfferDto.fromJson(item));
    }
    return offers;
  }

  Future<List<CategoryDto>> getCategories() async {
    final data =
        await _apiService.get(endPoint: _categoryEndPoint) as List<dynamic>;
    List<CategoryDto> categories = [];
    for (var item in data) {
      categories.add(CategoryDto.fromJson(item));
    }
    return categories;
  }

  Future<List<MealDto>> search(String keyWord) async {
    final data = await _apiService.get(
      endPoint: '$_searchEndPoint/$keyWord',
      // queryParameters: {
      //     _searchKeyWordKey : keyWord
      // }
    ) as List<dynamic>;
    List<MealDto> meals = [];
    for (var item in data) {
      meals.add(MealDto.fromJson(item));
    }
    return meals;
  }
}
