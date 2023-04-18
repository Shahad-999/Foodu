import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/meal_ui.dart';
import '../../states/search_state.dart';

class StateHandler<T extends SearchState> extends StatelessWidget {
  const StateHandler({Key? key, required this.state, required this.onLoaded})
      : super(key: key);
  final SearchState state;
  final Widget Function(List<MealUi>) onLoaded;

  @override
  Widget build(BuildContext context) {
    if (state is LoadedSearchState) {
      return onLoaded((state as LoadedSearchState).items);
    } else if (state is LoadingSearchState) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is FailSearchState) {
      return Center(
          child: SvgPicture.asset(
        'assets/svg/fail.svg',
        semanticsLabel: '',
      ));
    } else {
      return const Center();
    }
  }
}
