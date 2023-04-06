import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:size_config/size_config.dart';

class SpecialItem extends StatelessWidget {
  const SpecialItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.w),
      child: Container(
        height: 178.h,
        width: MediaQuery.of(context).size.width - 48.w,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Row(
          
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children:  [
                  Padding(
                    padding: EdgeInsets.only(top: 24.h,left: 24.w),
                    child: Text(
                      '30%',
                      style: TextStyle(
                        fontSize: 64.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.white
                      ),
                      )
                    ),
                      Text(
                      'Discount only \n vaild for today ',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      )
                    
                ],
                        
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                'assets/images/burger.png'
              )
            )
          ],
        ),
      ),
    );
  }
}
