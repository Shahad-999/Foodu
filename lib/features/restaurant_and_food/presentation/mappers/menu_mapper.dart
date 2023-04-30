import 'package:foodu/features/restaurant_and_food/domain/models/menu.dart';
import 'package:foodu/features/restaurant_and_food/presentation/models/menu_ui.dart';

extension MenuDomainMapper on Menu {
  MenuUi toUiModel() {
    return MenuUi(title: title, items: items.toUiModel());
  }
}

extension ListMenuDomainMapper on List<Menu> {
  List<MenuUi> toUiModel() {
    return map((e) => e.toUiModel()).toList();
  }
}

extension MenuMealDomainMapper on Meal {
  MealUi toUiModel() {
    return MealUi(id: id, name: name, price: '\$$price', imageUrl: imageUrl);
  }
}

extension ListMenuMealDomainMapper on List<Meal> {
  List<MealUi> toUiModel() {
    return map((e) => e.toUiModel()).toList();
  }
}

extension Pirnt on Object {
  Object toUiModel() {
    print(this);
    return this;
  }
}

