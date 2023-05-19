import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: [
          SizedBox(
              height: 536,
              child: Stack(children: [
                Positioned(
                    right: 8,
                    left: 8,
                    top: 58,
                    bottom: 10,
                    child: SvgPicture.asset(
                      'assets/svg/onboarding_back.svg',
                      semanticsLabel: title,
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.tertiary,
                          BlendMode.srcIn),
                    )),
                Positioned(
                    right: 0,
                    left: 0,
                    top: 0,
                    bottom: 100,
                    child: SizedBox(
                        height: 350,
                        width: 400,
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SvgPicture.asset(image,
                                semanticsLabel: title))))
              ])),
          SizedBox(
            height: 60,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
