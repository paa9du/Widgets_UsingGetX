import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({super.key});

  @override
  State<NavigatorWidget> createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
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
                      Get.toNamed('/NamedRoute/1234');
                    },
                    child: Text('Home'),
                  ),
                  // Text('${Get.arguments}')
                  Text(
                      "Channel Name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
