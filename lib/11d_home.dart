//Till now We write the bussiness logic inside the controller after that we create the instace of the controller inside the uIcode
//After creating instance we use the variables and methods of the particual conroller
//--This means that our ui code is tightly coupled with controller bc instance created inside our UI code
//Now if we want to remove this thight copling then we use binding .

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '11b_myController.dart';

class HomePageBinding extends StatefulWidget {
  const HomePageBinding({super.key});

  @override
  State<HomePageBinding> createState() => _HomePageBindingState();
}

class _HomePageBindingState extends State<HomePageBinding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage Binding'),
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
                    child: Text('HomePage Increment Binding'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Back Binding'),
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
