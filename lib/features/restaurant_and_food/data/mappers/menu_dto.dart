/// title : "Menu"
/// meals : [{"id":"1","name":"Mixed Salad Bo","price":6.0,"imageUrl":"https://img.freepik.com/premium-vector/dla-interneta_130388-3885.jpg?w=740"},{"id":"2","name":"Mixed Salad Bo","price":6.0,"imageUrl":"https://img.freepik.com/premium-vector/dla-interneta_130388-3885.jpg?w=740"},{"id":"3","name":"Mixed Salad Bo","price":6.0,"imageUrl":"https://img.freepik.com/premium-vector/dla-interneta_130388-3885.jpg?w=740"},{"id":"4","name":"Mixed Salad Bo","price":6.0,"imageUrl":"https://img.freepik.com/premium-vector/dla-interneta_130388-3885.jpg?w=740"}]

class MenuDto {
  MenuDto({
      String? title, 
      List<MealDto>? meals,}){
    _title = title;
    _meals = meals;
}

  MenuDto.fromJson(dynamic json) {
    _title = json['title'];
    if (json['meals'] != null) {
      _meals = [];
      json['meals'].forEach((v) {
        _meals?.add(MealDto.fromJson(v));
      });
    }
  }
  String? _title;
  List<MealDto>? _meals;
MenuDto copyWith({  String? title,
  List<MealDto>? meals,
}) => MenuDto(  title: title ?? _title,
  meals: meals ?? _meals,
);
  String? get title => _title;
  List<MealDto>? get meals => _meals;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    if (_meals != null) {
      map['meals'] = _meals?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "1"
/// name : "Mixed Salad Bo"
/// price : 6.0
/// imageUrl : "https://img.freepik.com/premium-vector/dla-interneta_130388-3885.jpg?w=740"

class MealDto {
  MealDto({
      String? id, 
      String? name, 
      num? price, 
      String? imageUrl,}){
    _id = id;
    _name = name;
    _price = price;
    _imageUrl = imageUrl;
}

  MealDto.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _price = json['price'];
    _imageUrl = json['imageUrl'];
  }
  String? _id;
  String? _name;
  num? _price;
  String? _imageUrl;
MealDto copyWith({  String? id,
  String? name,
  num? price,
  String? imageUrl,
}) => MealDto(  id: id ?? _id,
  name: name ?? _name,
  price: price ?? _price,
  imageUrl: imageUrl ?? _imageUrl,
);
  String? get id => _id;
  String? get name => _name;
  num? get price => _price;
  String? get imageUrl => _imageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['price'] = _price;
    map['imageUrl'] = _imageUrl;
    return map;
  }

}