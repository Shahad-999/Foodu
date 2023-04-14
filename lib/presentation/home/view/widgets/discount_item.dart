import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class DiscountItem extends StatelessWidget {
  const DiscountItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(right: 8.w),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 190,
                width: 190,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 190,
                      width: 190,

                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset('assets/images/salad.png')
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Container(
                        width: 56.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: Center(
                          child: Text(
                            'PROMO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h,),
              Text(
                'Mixed Salad Bonb.. ',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800
                ),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                width: 190.w,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Text(
                              '\$6.00',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w900,
                              fontSize: 20.sp
                            ),
                          ),
                          VerticalDivider(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                          Icon(
                            Icons.delivery_dining_rounded,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                              '\$2.00',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                          Icons.favorite_border,
                          color: Color(0xFFFF0025),
                            size: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
