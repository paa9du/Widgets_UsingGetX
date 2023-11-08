import 'package:flutter/material.dart';
import 'package:get/get.dart';

class languageController extends GetxController {
  void changeLanguage(var param1, var param2) {
    var local = Locale(param1, param2);
    Get.updateLocale(local);
  }
}
