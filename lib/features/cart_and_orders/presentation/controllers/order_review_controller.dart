import 'package:foodu/core/config/routes.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/cart_and_orders/domain/usecases/review_use_case.dart';
import 'package:foodu/features/cart_and_orders/utils/emoji.dart';
import 'package:get/get.dart';


class OrderReviewController extends GetxController {
  final SentReviewUseCase _sentReviewUseCase;

  OrderReviewController() : _sentReviewUseCase = getIt.get();
  final _orderId =Get.arguments[Arguments.orderId];

  final selectedMood = 0.obs;
  final _driverRating = 3.2.obs;
  final _restaurantRating = 3.2.obs;

  onClickEmoji(int index){
    selectedMood.value = index;
  }

  onDriverRatingUpdate(double newRate){
    _driverRating.value = newRate;
  }
  onRestaurantRatingUpdate(double newRate){
    _restaurantRating.value = newRate;
  }

  final emoji = [
    Emoji.thumbsUp, // 👍
    Emoji.thumbsDown, // 👎
    Emoji.happyFace, // 😃
    Emoji.sadFace, // 😔
    Emoji.star, // ⭐
    Emoji.handsRaised, // 🙌
    Emoji.grimacingFace, // 😬
    Emoji.heartEyes, // 😍
    Emoji.clappingHands, // 👏
    Emoji.fire, // 🔥
  ];

  sentOrderReview(){
    _sentReviewUseCase.sentOrderReview(emoji: emoji[selectedMood.value],orderId: _orderId);
  }

  sentRestaurantRating(){
    _sentReviewUseCase.sentRestaurantRating(rating: _restaurantRating.value,orderId: _orderId);
  }

  sentDriverRating(){
    _sentReviewUseCase.sentDriverRating(rating: _driverRating.value,orderId: _orderId);
  }

}
