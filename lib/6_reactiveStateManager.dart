import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RSMByUsingObx extends StatefulWidget {
  const RSMByUsingObx({super.key});

  @override
  State<RSMByUsingObx> createState() => _RSMByUsingObxState();
}

class _RSMByUsingObxState extends State<RSMByUsingObx> {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RSMByUsingOBX'),
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() => Text("count is : $count")),
                  ElevatedButton(
                    onPressed: () {
                      increment();
                    },
                    child: Text('Increment'),
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
