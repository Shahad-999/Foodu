import '../models/menu_ui.dart';

 class MenuState{
   MenuState._();
   factory MenuState.success(List<MenuUi> menu) = LoadedMenuState;
   factory MenuState.initial() = InitialMenuState;

 }

class InitialMenuState extends MenuState{
   InitialMenuState(): super._();
}
class LoadedMenuState extends MenuState{
  final List<MenuUi> data;
  LoadedMenuState(this.data): super._();
}
