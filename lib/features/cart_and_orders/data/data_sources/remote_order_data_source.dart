import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/utils/api_service.dart';
import 'package:foodu/features/cart_and_orders/data/models/OrderItem.dart';
import 'package:foodu/features/cart_and_orders/data/models/order_summary_dto.dart';

import '../models/cart_item_dto.dart';

class RemoteOrdersDataSource {
  final ApiService _apiService;

  RemoteOrdersDataSource() : _apiService = getIt.get();

  static const String _orderIdKey = 'order_id';
  static const String _messageKey = 'message';
  static const String _feedbackKey = 'feedback';
  static const String _ratingKey = 'rating';
  static const String _cartEndPoint = 'cart';
  static const String _orderSummaryEndPoint = 'orderSummary';
  static const String _cancelOrderEndPoint = 'cancelOrder';
  static const String _orderReviewEndPoint = 'orderReview';
  static const String _ratingEndPoint = 'rating';
  static const String _sentOrderEndPoint = 'sentOrder';
  static const String _ordersEndPoint = 'orders';

  Future<OrderSummaryDto> getOrderSummary(String orderId) async {
    final data = await _apiService.get(
      endPoint: '$_orderSummaryEndPoint/$orderId',
    );
    return OrderSummaryDto.fromJson(data);
  }

  Future<List<CartItemDto>> getCartContent() async {
    final data = await _apiService.get(
      endPoint: _cartEndPoint,
    ) as List<dynamic>;
    List<CartItemDto> content = [];

    for (var item in data) {
      content.add(CartItemDto.fromJson(item));
    }
    return content;
  }

  Future<void> sentCancelOrderReason(String message, String orderId) async {
    return await _apiService.post(
        endPoint: _cancelOrderEndPoint,
        queryParameters: {_orderIdKey: orderId, _messageKey: message});
  }

  Future<void> sentOrderReview(String feedback, String orderId) async {
    return await _apiService.post(
        endPoint: _orderReviewEndPoint,
        queryParameters: {_orderIdKey: orderId, _feedbackKey: feedback});
  }

  Future<void> sentRating(String type, String orderId, double rating) async {
    return await _apiService.post(
        endPoint: '$_ratingEndPoint/$type',
        queryParameters: {_orderIdKey: orderId, _ratingKey: rating});
  }

  Future<void> sentOrder(OrderSummaryDto orderSummary) async {
    return await _apiService.post(
      endPoint: _sentOrderEndPoint,
      data: orderSummary.toJson(),
    );
  }

  Future<List<OrderItemDto>> getCancelledOrders() async {
    final data = await _apiService.get(
      endPoint: '$_ordersEndPoint/cancelled',
    ) as List<dynamic>;
    List<OrderItemDto> orders = [];

    for (var item in data) {
      orders.add(OrderItemDto.fromJson(item));
    }
    return orders;
  }

  Future<List<OrderItemDto>> getCompletedOrders() async {
    final data = await _apiService.get(
      endPoint: '$_ordersEndPoint/completed',
    ) as List<dynamic>;
    List<OrderItemDto> orders = [];

    for (var item in data) {
      orders.add(OrderItemDto.fromJson(item));
    }
    return orders;
  }

  Future<List<OrderItemDto>> getActiveOrders() async {
    final data = await _apiService.get(
      endPoint: '$_ordersEndPoint/active',
    ) as List<dynamic>;
    List<OrderItemDto> orders = [];

    for (var item in data) {
      orders.add(OrderItemDto.fromJson(item));
    }
    return orders;
  }
}
