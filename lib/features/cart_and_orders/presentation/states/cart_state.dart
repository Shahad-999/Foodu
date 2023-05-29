
import '../models/cart_item_ui.dart';

class CartState{
   CartState._();
   factory CartState.success(List<CartItemUi> Cart) = LoadedCartState;
   factory CartState.initial() = InitialCartState;
   factory CartState.loading() = LoadingCartState;
   factory CartState.error(String message) = FailCartState;
   factory CartState.empty() = EmptyCartState;
 }

class InitialCartState extends CartState{
   InitialCartState(): super._();
}
class LoadingCartState extends CartState{
   LoadingCartState(): super._();
}
class LoadedCartState extends CartState{
  final List<CartItemUi> data;
  LoadedCartState(this.data): super._();
}
class FailCartState extends CartState{
  final String message;
  FailCartState(this.message): super._();
}

class EmptyCartState extends CartState{
  EmptyCartState(): super._();
}
