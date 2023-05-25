/// id : "1"
/// isFavorite : false
/// imageUrl : "https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80"
/// name : "Big Garden Salad"
/// rating : 4.8
/// numberOfReviews : 4.4
/// distance : 2.4
/// deliveryCost : 2.0
/// isOpen : false

class RestaurantDto {
  RestaurantDto({
      String? id, 
      bool? isFavorite, 
      String? imageUrl, 
      String? name, 
      num? rating, 
      num? numberOfReviews, 
      num? distance, 
      num? deliveryCost, 
      bool? isOpen,}){
    _id = id;
    _isFavorite = isFavorite;
    _imageUrl = imageUrl;
    _name = name;
    _rating = rating;
    _numberOfReviews = numberOfReviews;
    _distance = distance;
    _deliveryCost = deliveryCost;
    _isOpen = isOpen;
}

  RestaurantDto.fromJson(dynamic json) {
    _id = json['id'];
    _isFavorite = json['isFavorite'];
    _imageUrl = json['imageUrl'];
    _name = json['name'];
    _rating = json['rating'];
    _numberOfReviews = json['numberOfReviews'];
    _distance = json['distance'];
    _deliveryCost = json['deliveryCost'];
    _isOpen = json['isOpen'];
  }
  String? _id;
  bool? _isFavorite;
  String? _imageUrl;
  String? _name;
  num? _rating;
  num? _numberOfReviews;
  num? _distance;
  num? _deliveryCost;
  bool? _isOpen;
RestaurantDto copyWith({  String? id,
  bool? isFavorite,
  String? imageUrl,
  String? name,
  num? rating,
  num? numberOfReviews,
  num? distance,
  num? deliveryCost,
  bool? isOpen,
}) => RestaurantDto(  id: id ?? _id,
  isFavorite: isFavorite ?? _isFavorite,
  imageUrl: imageUrl ?? _imageUrl,
  name: name ?? _name,
  rating: rating ?? _rating,
  numberOfReviews: numberOfReviews ?? _numberOfReviews,
  distance: distance ?? _distance,
  deliveryCost: deliveryCost ?? _deliveryCost,
  isOpen: isOpen ?? _isOpen,
);
  String? get id => _id;
  bool? get isFavorite => _isFavorite;
  String? get imageUrl => _imageUrl;
  String? get name => _name;
  num? get rating => _rating;
  num? get numberOfReviews => _numberOfReviews;
  num? get distance => _distance;
  num? get deliveryCost => _deliveryCost;
  bool? get isOpen => _isOpen;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['isFavorite'] = _isFavorite;
    map['imageUrl'] = _imageUrl;
    map['name'] = _name;
    map['rating'] = _rating;
    map['numberOfReviews'] = _numberOfReviews;
    map['distance'] = _distance;
    map['deliveryCost'] = _deliveryCost;
    map['isOpen'] = _isOpen;
    return map;
  }

}