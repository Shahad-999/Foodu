/// id : "1"
/// name : "Noodles"
/// imageUrl : "https://cdn.pixabay.com/photo/2018/12/24/19/28/japanese-noodles-3893449_960_720.png"

class CategoryDto {
  CategoryDto({
    required String id,
    String? name,
    String? imageUrl,
  }) {
    _id = id;
    _name = name;
    _imageUrl = imageUrl;
  }

  CategoryDto.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _imageUrl = json['imageUrl'];
  }

  late String _id;
  String? _name;
  String? _imageUrl;

  CategoryDto copyWith({
    required String id,
    String? name,
    String? imageUrl,
  }) =>
      CategoryDto(
        id: id ,
        name: name ?? _name,
        imageUrl: imageUrl ?? _imageUrl,
      );

  String get id => _id;

  String? get name => _name;

  String? get imageUrl => _imageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['imageUrl'] = _imageUrl;
    return map;
  }
}
