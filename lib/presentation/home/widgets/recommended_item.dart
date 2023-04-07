import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 8.h),
      child: Container(
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Theme.of(context).colorScheme.secondary
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset('assets/images/salad.png')
                ),
              ),
              SizedBox(width: 16.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h,),
                  Text(
                    'Mixed Salad Bonb.. ',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '800 m - 4.9 (2.3k)',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 200.w,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
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
                              )
                              ,],
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
