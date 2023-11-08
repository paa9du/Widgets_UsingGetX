import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialogWidget extends StatefulWidget {
  const ShowDialogWidget({super.key});

  @override
  State<ShowDialogWidget> createState() => _ShowDialogWidgetState();
}

class _ShowDialogWidgetState extends State<ShowDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Show Dialog'),
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
                        // Get.defaultDialog();
                        Get.defaultDialog(
                          title: "Dailog Title",
                          titleStyle: TextStyle(fontSize: 40),
                          middleText: "This is Middle Text",
                          middleTextStyle: TextStyle(fontSize: 20),
                          backgroundColor: Colors.pink,
                          radius: 20,
                          content: Row(
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Text('loading'),
                              ),
                            ],
                          ),
                          textCancel: "cancel",
                          textConfirm: "conform",
                          onCancel: () {},
                          onConfirm: () {},
                          // cancel: Text(
                          //   "cancels",
                          //   style: TextStyle(color: Colors.red),
                          // )
                          actions: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Action-1'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Action-2'),
                            ),
                          ],
                          barrierDismissible: false,
                        );
                      },
                      child: Text('Show Dialog'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
