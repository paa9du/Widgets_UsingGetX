import 'package:get/get.dart';

class ControllerLifeCycle extends GetxController {
  var c = 0;
  void increment() async {
    await Future<int>.delayed(Duration(seconds: 5));
    this.c++;
    update();
  }

  void cleanUpTask() {
    print("Clean Up");
  }

//instead of using this initst and dipose

  @override
  void onInit() {
    print("Init called");
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
