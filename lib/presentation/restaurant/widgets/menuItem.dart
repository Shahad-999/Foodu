import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        height: 128.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Theme.of(context).colorScheme.secondary),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset('assets/images/salad.png')),
              ),
              SizedBox(
                width: 16.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Mixed Salad Bob.. ',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 20.sp, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    '\$6.00',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.sp,
                        decoration: TextDecoration.none),
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
