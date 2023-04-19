import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:size_config/size_config.dart';

import 'menu_item.dart';

class RestaurantBody extends StatelessWidget {
  const RestaurantBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Stack(children: [
        Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: ListView(padding: const EdgeInsets.all(0), children: [
              SizedBox(
                height: 434.h,
                child: Image.asset('assets/images/restaurant.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Text(
                          'Big Garden Salad',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontSize: 28.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Theme.of(context).colorScheme.onBackground,
                        )
                      ],
                    ),
                    SizedBox(height: 16.h),
                    const Divider(thickness: 1.5),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xFFF9A417),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          '4.8',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          '( 4.8K Reviews )',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                  fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Theme.of(context).colorScheme.onBackground,
                        )
                      ],
                    ),
                    SizedBox(height: 16.h),
                    const Divider(thickness: 1.5),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          '2.8 km',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Theme.of(context).colorScheme.onBackground,
                        )
                      ],
                    ),
                    SizedBox(height: 16.h),
                    const Divider(thickness: 1.5),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Icon(
                          Icons.event_available,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Offers are available',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Theme.of(context).colorScheme.onBackground,
                        )
                      ],
                    ),
                    SizedBox(height: 16.h),
                    const Divider(thickness: 1.5),
                    SizedBox(height: 20.h),
                    Text(
                      'Menu',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const MenuItem();
                        }),
                    SizedBox(height: 20.h),
                    Text(
                      'Drink',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const MenuItem();
                        }),
                  ],
                ),
              ),
            ])),
        Positioned(
            right: 24,
            left: 24,
            top: 72,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => {Navigator.of(context).pop()},
                  child: SvgPicture.asset(
                    'assets/svg/back_arrow.svg',
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onBackground,
                        BlendMode.srcIn),
                    semanticsLabel: 'Label',
                    width: 28,
                    height: 28,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/svg/heart.svg',
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onBackground,
                      BlendMode.srcIn),
                  semanticsLabel: 'Label',
                  width: 24,
                  height: 24,
                ),
                SizedBox(width: 16.w),
                SvgPicture.asset(
                  'assets/svg/sent.svg',
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onBackground,
                      BlendMode.srcIn),
                  semanticsLabel: 'Label',
                  width: 24,
                  height: 24,
                )
              ],
            )),
      ]),
    );
  }
}
