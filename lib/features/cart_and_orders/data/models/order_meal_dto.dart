class OrderMealDto {
  OrderMealDto({
      required this.id,
      required this.quantity,
      required this.name,
      required this.imageUrl,
      required this.price,});

  OrderMealDto.fromJson(dynamic json) {
    id = json['id'];
    quantity = json['quantity'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    price = json['price'];
  }
  String? id;
  int? quantity;
  String? name;
  String? imageUrl;
  double? price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['quantity'] = quantity;
    map['name'] = name;
    map['imageUrl'] = imageUrl;
    map['price'] = price;
    return map;
  }

}