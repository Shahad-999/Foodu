import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/navigation_bar.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/track_driver_body.dart';


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
