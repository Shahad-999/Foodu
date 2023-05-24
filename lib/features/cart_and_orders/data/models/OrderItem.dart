/// id : "id"
/// name : "BUrger WOW"
/// imageUrl : ""
/// distance : 3.2
/// price : 6.5
/// quantity : 2

class OrderItemDto {
  OrderItemDto({
      String? id, 
      String? name, 
      String? imageUrl, 
      num? distance, 
      num? price, 
      num? quantity,}){
    _id = id;
    _name = name;
    _imageUrl = imageUrl;
    _distance = distance;
    _price = price;
    _quantity = quantity;
}

  OrderItemDto.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _imageUrl = json['imageUrl'];
    _distance = json['distance'];
    _price = json['price'];
    _quantity = json['quantity'];
  }
  String? _id;
  String? _name;
  String? _imageUrl;
  num? _distance;
  num? _price;
  num? _quantity;
OrderItemDto copyWith({  String? id,
  String? name,
  String? imageUrl,
  num? distance,
  num? price,
  num? quantity,
}) => OrderItemDto(  id: id ?? _id,
  name: name ?? _name,
  imageUrl: imageUrl ?? _imageUrl,
  distance: distance ?? _distance,
  price: price ?? _price,
  quantity: quantity ?? _quantity,
);
  String? get id => _id;
  String? get name => _name;
  String? get imageUrl => _imageUrl;
  num? get distance => _distance;
  num? get price => _price;
  num? get quantity => _quantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['imageUrl'] = _imageUrl;
    map['distance'] = _distance;
    map['price'] = _price;
    map['quantity'] = _quantity;
    return map;
  }

}