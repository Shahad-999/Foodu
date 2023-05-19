import 'package:flutter/cupertino.dart';

import 'on_boarding_page_view.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({Key? key, required this.pageController})
      : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 730,
        child: PageView(
          controller: pageController,
          children: const [
            OnBoardingPageView(
              image: 'assets/svg/onboard1.svg',
              title: 'Order for Food',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            ),
            OnBoardingPageView(
              image: 'assets/svg/onboard2.svg',
              title: 'Easy Payment',
              description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            ),
            OnBoardingPageView(
              image: 'assets/svg/onboard3.svg',
              title: 'Fast Delivery',
              description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            ),
          ],
        ));
  }
}
