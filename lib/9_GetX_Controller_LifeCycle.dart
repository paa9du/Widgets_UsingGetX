import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/9a_Getx_Controller.dart';

class GetXControllerLC extends StatefulWidget {
  const GetXControllerLC({super.key});

  @override
  State<GetXControllerLC> createState() => _GetXControllerLCState();
}

class _GetXControllerLCState extends State<GetXControllerLC> {
  ControllerLifeCycle g = Get.put(ControllerLifeCycle());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Controller Life Cycle'),
      ),
      body: Column(
        children: [
          Container(
            height: 420,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ElevatedButton(
                  //   onPressed: () {
                  GetBuilder<ControllerLifeCycle>(
                    // initState: (data) => g.increment(),
                    // dispose: (_) => g.cleanUpTask(),
                    builder: (controller) => Text("The value is ${g.c}"),
                  ),
                  //   },
                  //   child: Text(
                  //       'GetX Controller Life Cycle \n We Want to perfoem some action when controller is initilized or if you wnat to perform some action whn cntroller is disposed that time we want to use controller life cycle '),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
