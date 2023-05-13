import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/navigation_bar.dart';

import '../widgets/addresses_body.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: const NavigationAppBar(title: 'Address'),
      body: const AddressesBody(),
    );
  }
}
