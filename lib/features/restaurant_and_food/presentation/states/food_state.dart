import '../models/restaurant_ui.dart';

 class RestaurantState{
   RestaurantState._();
   factory RestaurantState.success(RestaurantUi restaurant) = LoadedRestaurantState;
   factory RestaurantState.initial() = InitialRestaurantState;
   factory RestaurantState.loading() = LoadingRestaurantState;
   factory RestaurantState.error(String message) = FailRestaurantState;
 }

class InitialRestaurantState extends RestaurantState{
   InitialRestaurantState(): super._();
}
class LoadingRestaurantState extends RestaurantState{
   LoadingRestaurantState(): super._();
}
class LoadedRestaurantState extends RestaurantState{
  final RestaurantUi restaurant;
  LoadedRestaurantState(this.restaurant): super._();
}
class FailRestaurantState extends RestaurantState{
  final String message;
  FailRestaurantState(this.message): super._();
}
