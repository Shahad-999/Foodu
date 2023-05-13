import 'package:flutter/material.dart';

import 'address_item.dart';

class AddressesBody extends StatelessWidget {
  const AddressesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: AddressItem());
          }),
    );
  }
}
