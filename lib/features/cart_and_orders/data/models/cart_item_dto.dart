/// id : ""
/// name : ""
/// imageUrl : ""
/// rating : 0.0
/// distance : 0.0
/// numberOfUpvote : 0
/// price : 0.0

class CartItemDto {
  CartItemDto({
      String? id, 
      String? name, 
      String? imageUrl, 
      num? rating, 
      num? distance, 
      num? numberOfUpvote, 
      num? price,}){
    _id = id;
    _name = name;
    _imageUrl = imageUrl;
    _rating = rating;
    _distance = distance;
    _numberOfUpvote = numberOfUpvote;
    _price = price;
}

  CartItemDto.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _imageUrl = json['imageUrl'];
    _rating = json['rating'];
    _distance = json['distance'];
    _numberOfUpvote = json['numberOfUpvote'];
    _price = json['price'];
  }
  String? _id;
  String? _name;
  String? _imageUrl;
  num? _rating;
  num? _distance;
  num? _numberOfUpvote;
  num? _price;
CartItemDto copyWith({  String? id,
  String? name,
  String? imageUrl,
  num? rating,
  num? distance,
  num? numberOfUpvote,
  num? price,
}) => CartItemDto(  id: id ?? _id,
  name: name ?? _name,
  imageUrl: imageUrl ?? _imageUrl,
  rating: rating ?? _rating,
  distance: distance ?? _distance,
  numberOfUpvote: numberOfUpvote ?? _numberOfUpvote,
  price: price ?? _price,
);
  String? get id => _id;
  String? get name => _name;
  String? get imageUrl => _imageUrl;
  num? get rating => _rating;
  num? get distance => _distance;
  num? get numberOfUpvote => _numberOfUpvote;
  num? get price => _price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['imageUrl'] = _imageUrl;
    map['rating'] = _rating;
    map['distance'] = _distance;
    map['numberOfUpvote'] = _numberOfUpvote;
    map['price'] = _price;
    return map;
  }

}