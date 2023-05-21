import 'package:foodu/features/profile_screen/domain/models/address.dart';
import 'package:foodu/features/profile_screen/presentation/models/address_ui.dart';

extension AddressDomainMapper on Address {
  AddressUi toUiModel() {
    return AddressUi(title: title, fullAddress: fullAddress,isDefault: isDefault);
  }
}

extension ListAddressDomainMapper on List<Address> {
  List<AddressUi> toUiModel() {
    return map((e) => e.toUiModel()).toList();
  }
}
