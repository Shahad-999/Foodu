/// name : "Shahad Kadhim"
/// imageUrl : "https://avatars.githubusercontent.com/u/118618262?v=4"
/// phoneNumber : 782345622423
/// email : "aaa@gmail.com"

class ProfileDetailsDto {
  ProfileDetailsDto({
      String? name, 
      String? imageUrl, 
      num? phoneNumber, 
      String? email,}){
    _name = name;
    _imageUrl = imageUrl;
    _phoneNumber = phoneNumber;
    _email = email;
}

  ProfileDetailsDto.fromJson(dynamic json) {
    _name = json['name'];
    _imageUrl = json['imageUrl'];
    _phoneNumber = json['phoneNumber'];
    _email = json['email'];
  }
  String? _name;
  String? _imageUrl;
  num? _phoneNumber;
  String? _email;
ProfileDetailsDto copyWith({  String? name,
  String? imageUrl,
  num? phoneNumber,
  String? email,
}) => ProfileDetailsDto(  name: name ?? _name,
  imageUrl: imageUrl ?? _imageUrl,
  phoneNumber: phoneNumber ?? _phoneNumber,
  email: email ?? _email,
);
  String? get name => _name;
  String? get imageUrl => _imageUrl;
  num? get phoneNumber => _phoneNumber;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['imageUrl'] = _imageUrl;
    map['phoneNumber'] = _phoneNumber;
    map['email'] = _email;
    return map;
  }

}