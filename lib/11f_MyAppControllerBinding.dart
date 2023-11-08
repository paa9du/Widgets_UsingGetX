import 'package:get/get.dart';
import 'package:getx_1/11b_myController.dart';

class MyAppControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyControllerBinding>(() => MyControllerBinding());
  }
}
