import 'package:flutter/cupertino.dart';
import 'package:foodu/presentation/home/widgets/search_bar.dart';
import 'package:size_config/size_config.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        SizedBox(height: 8.h,),
        const HomeSearchBar()
      ],
    );
  }
}
