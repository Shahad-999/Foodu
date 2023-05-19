import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/config/routes.dart';
import 'on_boarding_pages.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;
  int pageCount = 3;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  navToNextPage() {
    num currentPage =
        pageController!.hasClients ? pageController?.page ?? 0 : 0;
    if (currentPage == pageCount - 1) {
      Get.offNamed(Routes.homeRoute);
    } else {
      pageController?.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    }
  }

  navToPreviousPage() {
    pageController?.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
  }

  Future<bool> onPressBack() {
    if (pageController?.page != 0) {
      navToPreviousPage();
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onPressBack(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.center,
                      child: OnBoardingPages(pageController: pageController!))),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GestureDetector(
                      onTap: navToNextPage,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(100)),
                        child: const Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
