import 'package:foodu/features/profile_screen/presentation/models/address_ui.dart';

class AddressScreenState{
  AddressScreenState._();
  factory AddressScreenState.success(List<AddressUi> address) = LoadedAddressScreenState;
  factory AddressScreenState.initial() = InitialAddressScreenState;
  factory AddressScreenState.loading() = LoadingAddressScreenState;
}

class InitialAddressScreenState extends AddressScreenState{
  InitialAddressScreenState(): super._();
}
class LoadingAddressScreenState extends AddressScreenState{
  LoadingAddressScreenState(): super._();
}
class LoadedAddressScreenState extends AddressScreenState{
  final List<AddressUi> address;
  LoadedAddressScreenState(this.address): super._();
}
class FailAddressScreenState extends AddressScreenState{
  final String message;
  FailAddressScreenState(this.message): super._();
}
