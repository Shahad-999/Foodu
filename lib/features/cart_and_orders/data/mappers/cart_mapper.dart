import 'package:foodu/features/cart_and_orders/data/models/cart_item_dto.dart';
import 'package:foodu/features/cart_and_orders/domain/models/cart_item.dart';

extension CartItemDataMapper on CartItemDto {
  CartItem toModel() {
    return CartItem(
        id: id ?? '',
        name: name ?? '',
        imageUrl: imageUrl ?? '',
        rating: rating?.toDouble() ?? 0.0,
        distance: distance?.toDouble() ?? 0.0 ,
        numberOfUpvote: numberOfUpvote?.toInt() ?? 0,
        price: price?.toDouble() ?? 0.0
    );
  }
}

extension ListCartItemDataMapper on List<CartItemDto> {
  List<CartItem> toModel() {
    return map((e) => e.toModel()).toList();
  }
}
