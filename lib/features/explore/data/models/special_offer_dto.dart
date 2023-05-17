/// id : "1"
/// imageUrl : "https://freepngimg.com/thumb/salad/23962-5-salad-transparent-background.png"
/// percentage : 10

class SpecialOfferDto {
  SpecialOfferDto({
    required String id,
    String? imageUrl,
    num? percentage,
  }) {
    _id = id;
    _imageUrl = imageUrl;
    _percentage = percentage;
  }

  SpecialOfferDto.fromJson(dynamic json) {
    _id = json['id'];
    _imageUrl = json['imageUrl'];
    _percentage = json['percentage'];
  }

  late String _id;
  String? _imageUrl;
  num? _percentage;

  SpecialOfferDto copyWith({
    String? id,
    String? imageUrl,
    num? percentage,
  }) =>
      SpecialOfferDto(
        id: id ?? _id,
        imageUrl: imageUrl ?? _imageUrl,
        percentage: percentage ?? _percentage,
      );

  String get id => _id;

  String? get imageUrl => _imageUrl;

  num? get percentage => _percentage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['imageUrl'] = _imageUrl;
    map['percentage'] = _percentage;
    return map;
  }
}
