import 'package:foodu/features/profile_screen/data/models/address_dto.dart';
import 'package:foodu/features/profile_screen/domain/models/address.dart';

extension AddressDataMapper on AddressDto {
  Address toModel() {
    return Address(title: title ?? '', fullAddress: fullAddress ?? '',isDefault: isDefault ?? false);
  }
}

extension ListAddressDataMapper on List<AddressDto> {
  List<Address> toModel() {
    return map((e) => e.toModel()).toList();
  }
}
