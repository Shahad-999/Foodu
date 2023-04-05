
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../presentation/home/home_screen.dart';
import '../presentation/onBoarding/on_boarding_screen.dart';
import '../presentation/splashScreen/splash_screen.dart';

class AppRouter{
    static const splashScreenRoute = '/splash_screen';
    static const onBoardingRoute = '/onBoarding_screen';
    static const homeRoute = '/home_screen';

    static Widget _homeRouteBuilder(BuildContext context, GoRouterState state) => const HomeScreen();
    static Widget _splashRouteBuilder(BuildContext context, GoRouterState state) => const SplashScreen();
    static Widget _onBoardingRouteBuilder(BuildContext context, GoRouterState state) => const OnBoardingScreen();


    static final GoRouter _router =
        GoRouter(
          initialLocation: splashScreenRoute,
          routes: [
              GoRoute(path: splashScreenRoute, builder: _splashRouteBuilder),
              GoRoute(path: onBoardingRoute, builder: _onBoardingRouteBuilder ),
              GoRoute(path: homeRoute, builder: _homeRouteBuilder)
            ],
        );
    static GoRouter get router => _router;

}