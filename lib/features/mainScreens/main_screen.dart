import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodu/features/categories/categories_screen.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

import '../explore/presentation/views/home_screen.dart';
import 'bottom_navigation_controller.dart';

class MainScreen extends StatelessWidget {

  BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const CategoriesScreen(),
    const Text(
      'Index 2: School',
    ),
    const Text(
      'Index 2: School',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: Obx(() => IndexedStack(
            index: bottomNavigationController.currentIndex.value,
            children: _widgetOptions,
          ) ),
        bottomNavigationBar:
        Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                // BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Obx(() => BottomNavigationBar(
                  items:  <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        'assets/svg/home.svg',
                        semanticsLabel: '',
                      )  ,
                      icon: SvgPicture.asset(
                        'assets/svg/home.svg',
                        colorFilter: const ColorFilter.mode(Color(0xFFBDBDBB), BlendMode.srcIn),
                        semanticsLabel: '',
                      ) ,
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        'assets/svg/category.svg',
                        semanticsLabel: '',
                      ) ,
                      icon: SvgPicture.asset(
                        'assets/svg/category.svg',
                        colorFilter: const ColorFilter.mode(Color(0xFFBDBDBB), BlendMode.srcIn),
                        semanticsLabel: '',
                      ) ,
                      label: 'Categories',
                    ),

                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        'assets/svg/order.svg',
                        semanticsLabel: '',
                      ) ,
                      icon: SvgPicture.asset(
                        'assets/svg/order.svg',
                        colorFilter: const ColorFilter.mode(Color(0xFFBDBDBB), BlendMode.srcIn),
                        semanticsLabel: '',
                      ) ,
                      label: 'Orders',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        'assets/svg/profile.svg',
                        semanticsLabel: '',
                      ),
                      icon: SvgPicture.asset(
                        'assets/svg/profile.svg',
                        colorFilter: const ColorFilter.mode(Color(0xFFBDBDBB), BlendMode.srcIn),
                        semanticsLabel: '',
                      ) ,
                      label: 'Profile',
                    ),
                  ],
                  currentIndex: bottomNavigationController.currentIndex.value,
                  selectedItemColor: Theme.of(context).colorScheme.primary,
                  unselectedItemColor: const Color(0xFFBDBDBB),
                  onTap: (value) => bottomNavigationController.changeIndex(value),
                  selectedLabelStyle: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).colorScheme.primary
                  ) ,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFBDBDBB)
                  ),
                  backgroundColor: Theme.of(context).colorScheme.background,
                  elevation: 16.0,
                ),
              ),
            )
        )
      ),
    );
  }
}
