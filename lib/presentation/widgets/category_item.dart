import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';


class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.image, required this.title, this.onTap})
      : super(key: key);
  final String image;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 64, width: 64, child: Image.asset(image)),
            SizedBox(height: 8.h),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
