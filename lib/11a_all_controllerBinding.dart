import 'package:get/get.dart';
import 'package:getx_1/11b_myController.dart';
import 'package:getx_1/11c_HomeController.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyControllerBinding>(() => MyControllerBinding());
    Get.lazyPut<HomeControllerBinding>(() => HomeControllerBinding());
  }
}
