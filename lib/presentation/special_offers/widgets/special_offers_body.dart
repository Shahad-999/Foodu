import 'package:flutter/cupertino.dart';
import 'package:foodu/presentation/widgets/special_item.dart';
import 'package:size_config/size_config.dart';


class SpecialOffersBody extends StatelessWidget {
   SpecialOffersBody({Key? key}) : super(key: key);
//TODO LATER REFFFACTOR
  List<int> colors = [
    0xFF1BAC4B,
    0xFFFEA323,
    0xFFFF7286,
    0xFF3E7DFE , ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context,index){
            return Padding(
              padding:  EdgeInsets.only(top: 8.h,bottom: 8.h,left: 24.w),
              child:  SpecialItem(
                backgroundColor: Color(colors[index]),
              ),
            );
          }
      ),
    );
  }
}
