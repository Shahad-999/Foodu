import 'package:get/get.dart';

import 'controller/home_controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }

}