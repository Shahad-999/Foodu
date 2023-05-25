import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/utils/api_service.dart';
import 'package:foodu/features/profile_screen/data/models/address_dto.dart';
import 'package:foodu/features/profile_screen/data/models/profile_details_dto.dart';

class RemoteProfileDataSource {
  final ApiService _apiService;

  RemoteProfileDataSource() : _apiService = getIt.get();

  static const String _addressEndPoint = 'address';
  static const String _profileEndPoint = 'profile';

  Future<List<AddressDto>> getAddress() async {
    final data = await _apiService.get(
      endPoint: _addressEndPoint,
    ) as List<dynamic> ;
    List<AddressDto> address = [];

    for (var item in data) {
      address.add(AddressDto.fromJson(item));
    }
    return address;
  }

  Future<ProfileDetailsDto> getProfileDetails() async {
    final data = await _apiService.get(
      endPoint: _profileEndPoint,
    ) ;
    return ProfileDetailsDto.fromJson(data);
  }

  Future updateProfile(ProfileDetailsDto details) async {
    return await _apiService.post(
      endPoint: '$_profileEndPoint/update',
      data: details.toJson()
    ) ;
  }


}
