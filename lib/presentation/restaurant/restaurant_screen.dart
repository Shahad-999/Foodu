import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodu/presentation/restaurant/widgets/restaurant_body.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: const AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          child: RestaurantBody()),
    );
  }
}
