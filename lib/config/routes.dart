
import 'package:flutter/cupertino.dart';
import 'package:foodu/presentation/mainScreens/main_screen.dart';
import 'package:foodu/presentation/recommendedForYou/recommended_screen.dart';
import 'package:go_router/go_router.dart';
import '../presentation/cart/cart_screen.dart';
import '../presentation/categories/categories_screen.dart';
import '../presentation/category/category_screen.dart';
import '../presentation/home/home_screen.dart';
import '../presentation/onBoarding/on_boarding_screen.dart';
import '../presentation/search/SearchScreen.dart';
import '../presentation/special_offers/Special OffersScreen.dart';
import '../presentation/splashScreen/splash_screen.dart';

class AppRouter{
    static const splashScreenRoute = '/splash_screen';
    static const onBoardingRoute = '/onBoarding_screen';
    static const homeRoute = '/home_screen';
    static const mainRoute = '/main_screen';
    static const cartRoute = '/cart_screen';
    static const specialOffersRoute = '/special_offers_screen';
    static const recommendedRoute = '/recommended_screen';
    static const categoriesRoute = '/categories_screen';
    static categoryDetailsParam([String? id,String? title]) => '/category/${id ?? ':id'}/${title ?? ':title'}';
    static searchParam([String? keyWord]) => '/search/${keyWord ?? ':keyWord'}';

    static Widget _homeRouteBuilder(BuildContext context, GoRouterState state) => const HomeScreen();
    static Widget _splashRouteBuilder(BuildContext context, GoRouterState state) => const SplashScreen();
    static Widget _onBoardingRouteBuilder(BuildContext context, GoRouterState state) => const OnBoardingScreen();
    static Widget _mainRouteBuilder(BuildContext context, GoRouterState state) => const MainScreen();
    static Widget _cartRouteBuilder(BuildContext context, GoRouterState state) => const CartScreen();
    static Widget _specialOffersRouteBuilder(BuildContext context, GoRouterState state) => const SpecialOffersScreen();
    static Widget _recommendedRouteBuilder(BuildContext context, GoRouterState state) => const RecommendedScreen();
    static Widget _categoriesRouteBuilder(BuildContext context, GoRouterState state) => const CategoriesScreen();
    static Widget _categoryRouteBuilder(BuildContext context, GoRouterState state) =>  CategoryScreen(categoryId:state.params['id']!, categoryTitle: state.params['title']!,);
    static Widget _searchRouteBuilder(BuildContext context, GoRouterState state) =>  SearchScreen(searchKeyWord: state.params['keyWord']!,);


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
              GoRoute(path: recommendedRoute, builder: _recommendedRouteBuilder),
              GoRoute(path: categoriesRoute, builder: _categoriesRouteBuilder),
              GoRoute(path: categoryDetailsParam(), builder: _categoryRouteBuilder),
              GoRoute(path: searchParam(), builder: _searchRouteBuilder),
            ],
        );
    static GoRouter get router => _router;

}