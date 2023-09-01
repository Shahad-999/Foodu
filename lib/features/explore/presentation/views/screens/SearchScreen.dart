import 'package:flutter/material.dart';
import 'package:foodu/features/explore/presentation/controllers/search_controller.dart' as searchController;
import 'package:foodu/features/explore/presentation/views/widgets/searchBody.dart';
import 'package:foodu/features/explore/presentation/views/widgets/search_app_bar.dart';
import 'package:get/get.dart';


//TODO ADD FILTER LATER
class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);
  searchController.SearchController controller = Get.put(searchController.SearchController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        appBar: SearchAppBar(
            keyword: controller.keyword,
            onClickSearch: (keyword) => controller.search(keyword)
        ),
        body: SearchBody()
      ),
    );
  }
}
