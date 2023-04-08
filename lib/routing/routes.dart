
import 'package:flutter/cupertino.dart';
import 'package:foodu/presentation/mainScreens/main_screen.dart';
import 'package:go_router/go_router.dart';
import '../presentation/cart/cart_screen.dart';
import '../presentation/home/home_screen.dart';
import '../presentation/onBoarding/on_boarding_screen.dart';
import '../presentation/special_offers/Special OffersScreen.dart';
import '../presentation/splashScreen/splash_screen.dart';

class AppRouter{
    static const splashScreenRoute = '/splash_screen';
    static const onBoardingRoute = '/onBoarding_screen';
    static const homeRoute = '/home_screen';
    static const mainRoute = '/main_screen';
    static const cartRoute = '/cart_screen';
    static const specialOffersRoute = '/special_offers_screen';

    static Widget _homeRouteBuilder(BuildContext context, GoRouterState state) => const HomeScreen();
    static Widget _splashRouteBuilder(BuildContext context, GoRouterState state) => const SplashScreen();
    static Widget _onBoardingRouteBuilder(BuildContext context, GoRouterState state) => const OnBoardingScreen();
    static Widget _mainRouteBuilder(BuildContext context, GoRouterState state) => const MainScreen();
    static Widget _cartRouteBuilder(BuildContext context, GoRouterState state) => const CartScreen();
    static Widget _specialOffersRouteBuilder(BuildContext context, GoRouterState state) => const SpecialOffersScreen();


    static final GoRouter _router =
        GoRouter(
          initialLocation: splashScreenRoute,
          routes: [
              GoRoute(path: splashScreenRoute, builder: _splashRouteBuilder),
              GoRoute(path: onBoardingRoute, builder: _onBoardingRouteBuilder ),
              GoRoute(path: homeRoute, builder: _homeRouteBuilder),
              GoRoute(path: mainRoute, builder: _mainRouteBuilder),
              GoRoute(path: cartRoute, builder: _cartRouteBuilder),
              GoRoute(path: specialOffersRoute, builder: _specialOffersRouteBuilder),
            ],
        );
    static GoRouter get router => _router;

}