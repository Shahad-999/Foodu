import 'package:foodu/features/restaurant_and_food/data/mappers/menu_dto.dart';
import 'package:foodu/features/restaurant_and_food/domain/models/menu.dart';

extension MenuDataMapper on MenuDto {
  Menu toModel() {
    return Menu(title ?? '', meals?.toModel() ?? []);
  }
}

extension ListMenuDataMapper on List<MenuDto> {
  List<Menu> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension MealDataMapper on MealDto {
  Meal toModel() {
    return Meal(id ?? '', name ?? '', price?.toDouble() ?? 0.0, imageUrl ?? '');
  }
}

extension ListMealDataMapper on List<MealDto> {
  List<Meal> toModel() {
    return map((e) => e.toModel()).toList();
  }
}
