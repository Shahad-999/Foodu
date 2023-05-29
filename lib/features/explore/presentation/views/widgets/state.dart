import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/meal_ui.dart';
import '../../states/search_state.dart';

class StateHandler<T extends MainState> extends StatelessWidget {
  const StateHandler({Key? key, required this.state, required this.onLoaded})
      : super(key: key);
  final MainState state;
  final Widget Function(List<MealUi>) onLoaded;

  @override
  Widget build(BuildContext context) {
    if (state is LoadedMainState) {
      return onLoaded((state as LoadedMainState).items);
    } else if (state is LoadingMainState) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is FailMainState) {
      return Center(
          child: SvgPicture.asset(
        'assets/svg/fail.svg',
        semanticsLabel: '',
      ));
    } else if (state is EmptyMainState) {
      return Center(
          child: SvgPicture.asset(
        'assets/svg/empty.svg',
        semanticsLabel: '',
      ));//TODO CHANGE IT LATER
    } else {
      return const Center();
    }
  }
}
