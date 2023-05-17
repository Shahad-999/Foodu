/// id : "1"
/// name : "Grilled Chicken"
/// imageUrl : "https://i.ibb.co/SwW1LZP/Daco-1156302.png"
/// rating : 4.5
/// isFavorite : true
/// distance : "2 km"
/// price : 15.99
/// deliveryCost : 2.99
/// numberOfUpvote : 50
/// categoryId : "1"
/// isDiscount : false

class MealDto {
  MealDto({
    required String id,
    String? name,
    String? imageUrl,
    num? rating,
    bool? isFavorite,
    String? distance,
    num? price,
    num? deliveryCost,
    num? numberOfUpvote,
    String? categoryId,
    bool? isDiscount,
  }) {
    _id = id;
    _name = name;
    _imageUrl = imageUrl;
    _rating = rating;
    _isFavorite = isFavorite;
    _distance = distance;
    _price = price;
    _deliveryCost = deliveryCost;
    _numberOfUpvote = numberOfUpvote;
    _categoryId = categoryId;
    _isDiscount = isDiscount;
  }

  MealDto.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _imageUrl = json['imageUrl'];
    _rating = json['rating'];
    _isFavorite = json['isFavorite'];
    _distance = json['distance'];
    _price = json['price'];
    _deliveryCost = json['deliveryCost'];
    _numberOfUpvote = json['numberOfUpvote'];
    _categoryId = json['categoryId'];
    _isDiscount = json['isDiscount'];
  }

  late String _id;
  String? _name;
  String? _imageUrl;
  num? _rating;
  bool? _isFavorite;
  String? _distance;
  num? _price;
  num? _deliveryCost;
  num? _numberOfUpvote;
  String? _categoryId;
  bool? _isDiscount;

  MealDto copyWith({
    String? name,
    String? imageUrl,
    num? rating,
    bool? isFavorite,
    String? distance,
    num? price,
    num? deliveryCost,
    num? numberOfUpvote,
    String? categoryId,
    bool? isDiscount,
  }) =>
      MealDto(
        id: id,
        name: name ?? _name,
        imageUrl: imageUrl ?? _imageUrl,
        rating: rating ?? _rating,
        isFavorite: isFavorite ?? _isFavorite,
        distance: distance ?? _distance,
        price: price ?? _price,
        deliveryCost: deliveryCost ?? _deliveryCost,
        numberOfUpvote: numberOfUpvote ?? _numberOfUpvote,
        categoryId: categoryId ?? _categoryId,
        isDiscount: isDiscount ?? _isDiscount,
      );

  String get id => _id;

  String? get name => _name;

  String? get imageUrl => _imageUrl;

  num? get rating => _rating;

  bool? get isFavorite => _isFavorite;

  String? get distance => _distance;

  num? get price => _price;

  num? get deliveryCost => _deliveryCost;

  num? get numberOfUpvote => _numberOfUpvote;

  String? get categoryId => _categoryId;

  bool? get isDiscount => _isDiscount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['imageUrl'] = _imageUrl;
    map['rating'] = _rating;
    map['isFavorite'] = _isFavorite;
    map['distance'] = _distance;
    map['price'] = _price;
    map['deliveryCost'] = _deliveryCost;
    map['numberOfUpvote'] = _numberOfUpvote;
    map['categoryId'] = _categoryId;
    map['isDiscount'] = _isDiscount;
    return map;
  }
}
