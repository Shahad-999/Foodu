import 'package:flutter/cupertino.dart';
import 'package:foodu/presentation/recommendedForYou/widgets/recommended_with_chips.dart';
import 'package:size_config/size_config.dart';


class RecommendedBody extends StatelessWidget {
   const RecommendedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child: const RecommendedWithChips(),
    );
  }
}
