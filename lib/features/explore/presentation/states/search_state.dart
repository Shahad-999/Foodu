import '../model/meal_ui.dart';
abstract class State{}
abstract class MainState{}
class InitialMainState extends MainState{}
class LoadingMainState extends MainState{}
class EmptyMainState extends MainState{}
class LoadedMainState extends MainState{
  final List<MealUi> items;
  LoadedMainState(this.items);
}
class FailMainState extends MainState{
  final String message;
  FailMainState(this.message);
}
