import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/utils/api_service.dart';
import 'package:foodu/features/restaurant_and_food/data/mappers/menu_dto.dart';
import 'package:foodu/features/restaurant_and_food/data/mappers/restaurant_dto.dart';

class RemoteFoodDataSource {
  final ApiService _apiService;

  RemoteFoodDataSource() : _apiService = getIt.get();

  static const String _menusEndPoint = 'menus';
  static const String _restaurantEndPoint = 'restaurant';

  Future<List<MenuDto>> getMenus(String restaurantId) async {
    final data = await _apiService.get(
      endPoint: '$_menusEndPoint/$restaurantId',
    ) as List<dynamic>;
    List<MenuDto> address = [];

    for (var item in data) {
      address.add(MenuDto.fromJson(item));
    }
    return address;
  }

  Future<RestaurantDto> getRestaurant(String restaurantId) async {
    final data = await _apiService.get(
      endPoint: '$_restaurantEndPoint/$restaurantId',
    );
    return RestaurantDto.fromJson(data);
  }
}
