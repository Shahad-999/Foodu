import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:size_config/size_config.dart';

import '../../config/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _showOnBoarding = false;

  @override
  void initState() {
    super.initState();
    _navToNextScreen();
  }

  _navToNextScreen(){
    Future.delayed(const Duration(milliseconds: 3000)).then((value) {
      if(_showOnBoarding){
        GoRouter.of(context).go(AppRouter.onBoardingRoute);
      }else{
        GoRouter.of(context).go(AppRouter.mainRoute);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
              width: 50.w,
              child: Image.asset(
                'assets/images/logo_foodu.png'
              ),
            ),
            Text(
                'Foodu',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 45.sp,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        )
      ),
    );
  }
}
