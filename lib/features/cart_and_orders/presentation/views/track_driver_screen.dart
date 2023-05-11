import 'package:flutter/material.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/track_driver_body.dart';

import '../../../../core/widgets/navigation_bar.dart';

class TrackDriverScreen extends StatelessWidget {
  const TrackDriverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: const NavigationAppBar(),
      body: const TrackDriverBody(),
    );
  }
}
