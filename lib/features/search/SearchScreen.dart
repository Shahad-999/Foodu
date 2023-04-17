import 'package:flutter/material.dart';
import 'package:foodu/features/search/widgets/searchBody.dart';
import 'package:foodu/features/search/widgets/search_app_bar.dart';

//TODO ADD FILTER LATER
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        appBar: const SearchAppBar(), //TODO PASS KEYWORD SEARCH HERE FROM CONTROLLER
        body: const SearchBody()
      ),
    );
  }
}
