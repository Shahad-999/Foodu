import '../model/meal_ui.dart';
abstract class State{}
abstract class SearchState{}
class InitialSearchState extends SearchState{}
class LoadingSearchState extends SearchState{}
class LoadedSearchState extends SearchState{
  final List<MealUi> items;
  LoadedSearchState(this.items);
}
class FailSearchState extends SearchState{
  final String message;
  FailSearchState(this.message);
}
