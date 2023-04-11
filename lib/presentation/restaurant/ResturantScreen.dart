import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodu/presentation/restaurant/widgets/ResturantBody.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key, required this.restaurantId})
      : super(key: key);
  final String restaurantId;

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
