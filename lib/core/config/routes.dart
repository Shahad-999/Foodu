import 'package:foodu/features/mainScreens/main_binding.dart';
import 'package:foodu/features/mainScreens/main_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../features/cart/cart_screen.dart';
import '../../features/categories/categories_screen.dart';
import '../../features/categories/category/category_screen.dart';
import '../../features/explore/presentation/views/home_screen.dart';
import '../../features/explore/presentation/views/recommended_screen.dart';
import '../../features/onboarding/presentation/on_boarding_screen.dart';
import '../../features/explore/presentation/views/SearchScreen.dart';
import '../../features/explore/presentation/views/Special OffersScreen.dart';
import '../../features/restaurant_and_food/presentation/restaurant_and_food_binding.dart';
import '../../features/restaurant_and_food/presentation/views/meal_details_screen.dart';
import '../../features/restaurant_and_food/presentation/views/restaurant_screen.dart';
import '../../features/splashScreen/splash_screen.dart';

class Arguments {
  static const String categoryId = 'CATEGORY_ID';
  static const String categoryTitle = 'CATEGORY_TITLE';

  static const String searchKeyWord = 'SEARCH_KEY_WORD';
  static const String mealId = 'MEAL_ID';
  static const String restaurantId = 'RESTAURANT_ID';
}

class Routes {
  static const String splashScreenRoute = '/splash_screen';
  static const String onBoardingRoute = '/onBoarding_screen';
  static const String homeRoute = '/home_screen';
  static const String mainRoute = '/main_screen';
  static const String cartRoute = '/cart_screen';
  static const String specialOffersRoute = '/special_offers_screen';
  static const String recommendedRoute = '/recommended_screen';
  static const String categoriesRoute = '/categories_screen';
  static const String categoryDetailsRoute = '/category_screen';
  static const String searchRoute = '/search_screen';
  static const String restaurantRoute = '/restaurant_screen';
  static const String mealRoute = '/meal_screen';
}

class AppRoutes {
  static const initialPage = Routes.splashScreenRoute;

  static final pages = [
    GetPage(
      name: Routes.specialOffersRoute,
      page: () => const SpecialOffersScreen(),
    ),
    GetPage(
      name: Routes.splashScreenRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.onBoardingRoute,
      page: () => const OnBoardingScreen(),
    ),
    GetPage(
        name: Routes.mainRoute,
        page: () => MainScreen(),
        binding: MainBinding(),
        children: [
          GetPage(
            name: Routes.homeRoute,
            page: () => const HomeScreen(),
          ),
          GetPage(
            name: Routes.categoriesRoute,
            page: () => const CategoriesScreen(),
          ),
        ]),
    GetPage(
      name: Routes.cartRoute,
      page: () => const CartScreen(),
    ),
    GetPage(
      name: Routes.specialOffersRoute,
      page: () => const SpecialOffersScreen(),
    ),
    GetPage(
      name: Routes.recommendedRoute,
      page: () => const RecommendedScreen(),
    ),
    GetPage(
      name: Routes.categoryDetailsRoute,
      page: () => const CategoryScreen(),
    ),
    GetPage(
      name: Routes.searchRoute,
      page: () => SearchScreen(),
    ),
    GetPage(
      name: Routes.restaurantRoute,
      page: () => const RestaurantScreen(),
      binding: RestaurantAndFoodBinding(),
    ),
    GetPage(
      name: Routes.mealRoute,
      page: () => const MealDetailsScreen(),
    ),
  ];
}