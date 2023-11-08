import 'package:get/get.dart';

import '11c_HomeController.dart';

class HomeControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeControllerBinding>(() => HomeControllerBinding());
  }
}
