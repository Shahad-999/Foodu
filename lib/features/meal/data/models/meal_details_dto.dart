class MealDetailsDto {
  MealDetailsDto({
      this.id, 
      this.name, 
      this.description, 
      this.imageUrl, 
      this.price,});

  MealDetailsDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    imageUrl = json['imageUrl'];
    price = json['price'];
  }
  String? id;
  String? name;
  String? description;
  String? imageUrl;
  double? price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['description'] = description;
    map['imageUrl'] = imageUrl;
    map['price'] = price;
    return map;
  }

}