import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodu/presentation/categories/categories_screen.dart';
import 'package:foodu/presentation/home/view/home_screen.dart';
import 'package:size_config/size_config.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static   List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoriesScreen(),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: _widgetOptions.elementAt(_selectedIndex),
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
              child: BottomNavigationBar(
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
                currentIndex: _selectedIndex,
                selectedItemColor: Theme.of(context).colorScheme.primary,
                unselectedItemColor: const Color(0xFFBDBDBB),
                onTap: _onItemTapped,
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
            )
        )
      ),
    );
  }
}
