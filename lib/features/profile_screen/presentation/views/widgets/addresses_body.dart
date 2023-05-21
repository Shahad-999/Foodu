import 'package:flutter/material.dart';
import 'package:foodu/features/profile_screen/presentation/controllers/address_controller.dart';
import 'package:foodu/features/profile_screen/presentation/models/address_ui.dart';
import 'package:foodu/features/profile_screen/presentation/states/address_screen_state.dart';
import 'package:get/get.dart';

import 'address_item.dart';

class AddressesBody extends StatelessWidget {
  AddressesBody({Key? key}) : super(key: key);
  final AddressController _controller = Get.put(AddressController()..getAddress());

  @override
  Widget build(BuildContext context) {
    return Obx(() => handleStateWidget(_controller.address.value, context));
  }

  Widget handleStateWidget(AddressScreenState value, BuildContext context) {
    switch (value.runtimeType) {
      case LoadingAddressScreenState:
        {
          return const Center(child: CircularProgressIndicator());
        }
      case LoadedAddressScreenState:
        {
          return onLoadedData(
              context, (value as LoadedAddressScreenState).address);
        }
      default:
        {
          return Container();
        }
    }
  }

  Widget onLoadedData(BuildContext context, List<AddressUi> address) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          itemCount: address.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: AddressItem(
                  address: address[index],
                ));
          }),
    );
  }
}
