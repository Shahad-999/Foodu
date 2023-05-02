
 import 'package:foodu/features/meal/presentation/models/meal_details_ui.dart';

class MealState{
   MealState._();
   factory MealState.success(MealDetailsUi meal) = LoadedMealState;
   factory MealState.initial() = InitialMealState;
   factory MealState.loading() = LoadingMealState;
   factory MealState.error(String message) = FailMealState;
 }

class InitialMealState extends MealState{
   InitialMealState(): super._();
}
class LoadingMealState extends MealState{
   LoadingMealState(): super._();
}
class LoadedMealState extends MealState{
  final MealDetailsUi data;
  LoadedMealState(this.data): super._();
}
class FailMealState extends MealState{
  final String message;
  FailMealState(this.message): super._();
}
