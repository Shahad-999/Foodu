import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/profile_screen/domain/usecases/address_use_case.dart';
import 'package:foodu/features/profile_screen/presentation/mappers/address_mapper.dart';
import 'package:foodu/features/profile_screen/presentation/states/address_screen_state.dart';
import 'package:get/get.dart';

class AddressController extends GetxController {
  final AddressUseCase _addressUseCase;
  final address = Rx<AddressScreenState>(InitialAddressScreenState());

  AddressController() : _addressUseCase = getIt.get();

  getAddress() {
    address.value = LoadingAddressScreenState();
    _addressUseCase.call().then((respond) {
      respond.fold((l) => {}, (items) {
        address.value = (LoadedAddressScreenState(items.toUiModel()));
      });
    });
  }

}
