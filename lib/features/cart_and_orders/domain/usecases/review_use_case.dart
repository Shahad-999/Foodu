import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/cart_and_orders/domain/order_repository.dart';
import 'package:foodu/features/cart_and_orders/utils/emoji.dart';

class SentReviewUseCase {

  final OrdersRepository _repository;
  SentReviewUseCase() : _repository = getIt.get();

  Future sentOrderReview({required Emoji emoji,required String orderId }) {
    return _repository.sentOrderReview(feedback : emoji.name,orderId: orderId);
  }

  Future sentRestaurantRating({required double rating,required String orderId }) {
    return _repository.sentRestaurantRating(rating: rating,orderId: orderId);
  }

  Future sentDriverRating({required double rating,required String orderId }) {
    return _repository.sentDriverRating(rating: rating,orderId: orderId);
  }

}