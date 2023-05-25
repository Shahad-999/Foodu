import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/utils/api_service.dart';
import 'package:foodu/features/meal/data/models/meal_details_dto.dart';

class RemoteMealDataSource {
  final ApiService _apiService;

  RemoteMealDataSource() : _apiService = getIt.get();

  static const String _mealDetailsEndPoint = 'meal';
  static const String _addToCartEndPoint = 'addToCart';
  static const String _mealIdKey = 'mealId';
  static const String _quantityKey = 'quantity';

  Future<MealDetailsDto> getMealDetails(String mealId) async {
    final data = await _apiService.get(
      endPoint: '$_mealDetailsEndPoint/$mealId',
    ) ;
    return MealDetailsDto.fromJson(data);
  }

  Future<String> addToCart(String mealId,int quantity) async {
    final data = await _apiService.post(
      endPoint: _addToCartEndPoint,
      queryParameters: {
        _mealIdKey: mealId,
        _quantityKey: quantity
      }
    ) ;
    return data as String;
  }


}
