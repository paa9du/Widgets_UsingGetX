//Till now We write the bussiness logic inside the controller after that we create the instace of the controller inside the uIcode
//After creating instance we use the variables and methods of the particual conroller
//--This means that our ui code is tightly coupled with controller bc instance created inside our UI code
//Now if we want to remove this thight copling then we use binding .

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/11d_home.dart';

import '11b_myController.dart';

class GetXBindingWidget extends StatefulWidget {
  const GetXBindingWidget({super.key});

  @override
  State<GetXBindingWidget> createState() => _GetXBindingWidgetState();
}

class _GetXBindingWidgetState extends State<GetXBindingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Binding'),
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                        "The value is ${Get.find<MyControllerBinding>().count}"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.find<MyControllerBinding>().increment();
                    },
                    child: Text('GetX Binding'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Get.to(HomePageBinding());
                      Get.toNamed("/home");
                    },
                    child: Text('home'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
