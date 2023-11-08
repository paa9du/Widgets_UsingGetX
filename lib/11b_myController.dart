import 'package:get/get.dart';

class MyControllerBinding extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
