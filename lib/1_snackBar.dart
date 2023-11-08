import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SBWidget extends StatefulWidget {
  const SBWidget({super.key});

  @override
  State<SBWidget> createState() => _SBWidgetState();
}

class _SBWidgetState extends State<SBWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snackBar'),
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
                        Get.snackbar("SnackBarTitle", "SnackBarMsg",
                            snackPosition: SnackPosition.BOTTOM,
                            // titleText: Text('SnackBarAnotherTitle'),
                            // messageText: Text('Another Msg '),
                            colorText: Colors.red,
                            // backgroundColor: Colors.blue,
                            // animationDuration: Duration(seconds: 5),
                            // backgroundGradient: LinearGradient(colors: []),
                            // borderColor: Colors.amber,
                            // borderWidth:
                            boxShadows: [
                              BoxShadow(
                                  color: Colors.black87,
                                  offset: Offset(30, 50),
                                  spreadRadius: 20,
                                  blurRadius: 8)
                            ],
                            isDismissible: true,
                            dismissDirection: DismissDirection.vertical,
                            forwardAnimationCurve: Curves.bounceInOut,
                            duration: Duration(seconds: 30),
                            // icon:
                            leftBarIndicatorColor: Colors.green,
                            mainButton: TextButton(
                              onPressed: () {},
                              child: Text('Retry'),
                            ), onTap: (val) {
                          print('snackBar Clicked');
                        },
                            overlayBlur: 5,
                            showProgressIndicator: true,
                            progressIndicatorBackgroundColor: Colors.orange);
                      },
                      child: Text('snackBar'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
