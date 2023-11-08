import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/10_GetX_Internationalization.dart';
import 'package:getx_1/6_reactiveStateManager.dart';
import 'package:getx_1/8_MyController.dart';
import 'package:getx_1/9_GetX_Controller_LifeCycle.dart';

import '7_student.dart';

class NamedRouteWidget extends StatefulWidget {
  const NamedRouteWidget({super.key});

  @override
  State<NamedRouteWidget> createState() => _NamedRouteWidgetState();
}

class _NamedRouteWidgetState extends State<NamedRouteWidget> {
  //individuals variables Rx
  // var st = student();

  // final st = student(name: "tom", age: 25).obs;

  //individuals variables Rx
  // MyController myController = Get.put(MyController());

  //if init property is not used in GetX<Type of Controller> then
  //create the instance of controller as fallow.
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NamedRoute'),
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(RSMByUsingObx());
                    },
                    child: Text('NamedRoute'),
                  ),
                  Text("${Get.parameters['someValue']}"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              //individuals variables Rx
              // Obx(
              //   () => Text("Name is ${st.name.value}"),
              // ),

              // Obx(
              //   () => Text("Name is ${st.value.name}"),
              // ),

              //individuals variables Rx
              // Obx(
              //   () => Text("Name is ${myController.stu.name}"),
              // ),

              // Obx(
              //   () => Text("Name is ${myController.stu.value.name}"),
              // ),

              Container(
                child: ElevatedButton(
                  onPressed: () {
                    //individuals variables Rx
                    // st.name.value = st.name.value.toUpperCase();

                    // st.update((st) {
                    //   st?.name = st.name.toString().toUpperCase();
                    // });

                    //individuals variables Rx
                    // myController.convertToUpperCase();

                    // myController.convertUpperCase();
                  },
                  child: Text('Upper'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  // GetX<MyController>(
                  //   init: MyController(),
                  //   builder: (controller) {
                  //     // return Text("The Value is ${controller.count}");
                  //     return Text("The Value is ${myController.count}");
                  //   },
                  // ),

                  // GetBuilder<MyController>(
                  //   init: MyController(),
                  //   builder: (controller) =>
                  //       Text("The value is ${controller.count}"),
                  // ),

                  //unique id
                  GetBuilder<MyController>(
                    id: 'txtCount',
                    builder: (controller) =>
                        Text("The value is ${controller.count}"),
                  ),

                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        //   myController.increment();

                        //if instance of controller not created at top//for getbuilder also
                        Get.find<MyController>().increment();
                      },
                      child: Text('GetX with Controller type'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(
                          GetXControllerLC(),
                        );
                      },
                      child: Text("GetX life Cycle Controller"),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(GetxInternationalizationWidget());
                      },
                      child: Text("Getx Internationalization"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
