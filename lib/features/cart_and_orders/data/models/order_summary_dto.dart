import 'order_meal_dto.dart';

class OrderSummaryDto {
  OrderSummaryDto({
      required this.id,
      required this.orders,
      required this.subtotal,
      required this.deliveryFee,});

  OrderSummaryDto.fromJson(dynamic json) {
    id = json['id'];
    if (json['orders'] != null) {
      orders = [];
      json['orders'].forEach((v) {
        orders?.add(OrderMealDto.fromJson(v));
      });
    }
    subtotal = json['subtotal'];
    deliveryFee = json['deliveryFee'];
  }
  String? id;
  List<OrderMealDto>? orders;
  double? subtotal;
  double? deliveryFee;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (orders != null) {
      map['orders'] = orders?.map((v) => v.toJson()).toList();
    }
    map['subtotal'] = subtotal;
    map['deliveryFee'] = deliveryFee;
    return map;
  }

}