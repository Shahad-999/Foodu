import 'package:flutter/material.dart';
import 'package:foodu/presentation/search/widgets/searchBody.dart';
import 'package:foodu/presentation/search/widgets/search_app_bar.dart';

//TODO ADD FILTER LATER
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key, required this.searchKeyWord}) : super(key: key);
  final String searchKeyWord;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        appBar: const SearchAppBar(),
        body: const SearchBody()
      ),
    );
  }
}
