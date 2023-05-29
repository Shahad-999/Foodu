import 'package:foodu/features/cart_and_orders/domain/usecases/cart_use_case.dart';
import 'package:foodu/features/cart_and_orders/presentation/mappers/cart_item_mapper.dart';
import 'package:foodu/features/cart_and_orders/presentation/states/cart_state.dart';
import 'package:get/get.dart';

import '../../../../core/config/service_locator.dart';

class CartController extends GetxController {
  final CartUseCase _cartUseCase;
  final Rx<CartState> state = Rx<CartState>(InitialCartState());

  CartController() : _cartUseCase = getIt.get();

  @override
  void onInit() {
    super.onInit();
    fetchCartContent();
  }

  fetchCartContent() {
    state.value = LoadingCartState();
    _cartUseCase.call().then((respond) {
      respond.fold((l) => state.value = FailCartState(l.message), (items) {
        if (items.isEmpty) {
          state.value = EmptyCartState();
        } else {
          state.value = LoadedCartState(items.toCartItemUiModel());
        }
      });
    });
  }
}
