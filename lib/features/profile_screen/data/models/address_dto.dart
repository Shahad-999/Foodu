/// title : "Home"
/// fullAddress : "Times Square NYC, Manhattan"
/// isDefault : true

class AddressDto {
  AddressDto({
      String? title, 
      String? fullAddress, 
      bool? isDefault,}){
    _title = title;
    _fullAddress = fullAddress;
    _isDefault = isDefault;
}

  AddressDto.fromJson(dynamic json) {
    _title = json['title'];
    _fullAddress = json['fullAddress'];
    _isDefault = json['isDefault'];
  }
  String? _title;
  String? _fullAddress;
  bool? _isDefault;
AddressDto copyWith({  String? title,
  String? fullAddress,
  bool? isDefault,
}) => AddressDto(  title: title ?? _title,
  fullAddress: fullAddress ?? _fullAddress,
  isDefault: isDefault ?? _isDefault,
);
  String? get title => _title;
  String? get fullAddress => _fullAddress;
  bool? get isDefault => _isDefault;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['fullAddress'] = _fullAddress;
    map['isDefault'] = _isDefault;
    return map;
  }

}