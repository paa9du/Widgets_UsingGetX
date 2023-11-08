import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/7_student.dart';

//seperat the ui code and bussiness logic code
//individuals variables Rx
// class MyController extends GetxController {
//   var stu = student();
//   void convertToUpperCase() {
//     stu.name.value = stu.name.value.toUpperCase();
//   }
// }

class MyController extends GetxController {
  var stu = student(name: "maneesha", age: 22).obs;
  void convertUpperCase() {
    stu.update((stu) {
      stu?.name = stu.name.toString().toUpperCase();
    });
  }

  var count = 0.obs;
  void increment() {
    count++;
    //for grtbuilder
    //update();

    //unique id
    update(['txtCount']);
  }
}
