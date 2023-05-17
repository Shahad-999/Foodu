import 'package:foodu/features/cart_and_orders/domain/models/cart_item.dart';
import 'package:foodu/features/cart_and_orders/presentation/models/cart_item_ui.dart';

extension CartItemDomainMapper on CartItem {
  CartItemUi toCartItemUiModel() {
    return CartItemUi(
        id: id,
        name: name,
        imageUrl: imageUrl,
        rating: '$rating',
        numberOfUpvote: '(${numberOfUpvote}k reviews)',
        distance: '$distance km',
        price: '\$$price'
    );
  }
}

extension ListCartItemDomainMapper on List<CartItem> {
  List<CartItemUi> toCartItemUiModel() {
    return map((e) => e.toCartItemUiModel()).toList();
  }
}