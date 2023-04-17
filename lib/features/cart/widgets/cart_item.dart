import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 8.h),
      child: Dismissible(

        direction: DismissDirection.endToStart,
        key: const ValueKey('value'),
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.red,
          ),
          child:  Stack(
            children: const [
              Positioned(
                right: 24,
                top: 0,
                bottom: 0,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        onDismissed: (direction){
        },
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
                      'Mixed Salad Bonb',
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
                    Text(
                      '\$6.00',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w900,
                          fontSize: 20.sp
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}






