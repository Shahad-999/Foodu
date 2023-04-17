import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodu/features/mealDetails/widgets/quantity_picker_view.dart';
import 'package:size_config/size_config.dart';

import '../../../core/widgets/app_button.dart';

class MealDetailsBody extends StatelessWidget {
  const MealDetailsBody({Key? key}) : super(key: key);

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
              Hero(
                tag: 'meal image',
                child: SizedBox(
                height: 434.h,
                child: Image.asset(
                    'assets/images/salad.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.h),
                    Hero(
                      tag: 'meal name',
                      child: Text(
                        'Mixed vegetable salad',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(
                            fontSize: 28.sp, fontWeight: FontWeight.bold),
                      ),
                    ),

                    SizedBox(height: 16.h),
                    const Divider(thickness: 1.5),
                    SizedBox(height: 16.h),

                    Text(
                      'This vegetable salad is a healthy and delicious summer salad made with fresh raw veggies,avocado, nuts, seeds. herbs and feta in a light.',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),

                    SizedBox(height: 16.h),
                    const Divider(thickness: 1.5),
                    SizedBox(height: 16.h),

                    const QuantityPickerView(),

                  ],
                ),
              ),
            ])),
        Positioned(
          right: 16,
            left: 16,
            bottom: 40,
            child: AppButton(
              buttonText: 'Add to Basket - \$l2.00',
              onTap: ()=> {},
        )),
        Positioned(
            right: 24,
            left: 24,
            top: 72,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => {Navigator.of(context).pop()},
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color:
                          Theme.of(context).colorScheme.secondary.withAlpha(30),
                    ),
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
                ),
                const Spacer(),
                SizedBox(width: 16.w),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color:
                        Theme.of(context).colorScheme.secondary.withAlpha(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset(
                      'assets/svg/sent.svg',
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onBackground,
                          BlendMode.srcIn),
                      semanticsLabel: 'Label',
                      width: 24,
                      height: 24,
                    ),
                  ),
                )
              ],
            )),
      ]),
    );
  }
}
