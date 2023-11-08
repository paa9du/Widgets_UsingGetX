import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/4_Navigator.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet'),
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
                      Get.bottomSheet(
                        Container(
                          child: Wrap(
                            children: [
                              ListTile(
                                leading: Icon(Icons.light_mode_rounded),
                                onTap: () {
                                  Get.changeTheme(ThemeData.light());
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.dark_mode_rounded),
                                onTap: () {
                                  Get.changeTheme(ThemeData.dark());
                                },
                              ),
                            ],
                          ),
                        ),
                        backgroundColor: Colors.green,
                        enableDrag: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2.0),
                        ),
                      );
                    },
                    child: Text('BottomSheet'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                // Get.toNamed('/NaviRoute');

                Get.toNamed(
                    '/NaviRoute?channel=Ripples code&content=Flutter Getx');
                // Get.to(
                //   NavigatorWidget(),
                //   arguments: "hello Maneesha",
                //   fullscreenDialog: true,
                //   transition: Transition.zoom,
                //   duration: Duration(milliseconds: 4000),
                //   curve: Curves.bounceInOut,
                // );
              },
              child: Text('NavigationScreens'),
            ),
          )
        ],
      ),
    );
  }
}

// Scaffold(
//       appBar: AppBar(
//         title: Text('BottomSheet'),
//       ),
//       body: Scaffold(
//         appBar: AppBar(
//           title: Text('Show Dialog'),
//         ),
//         body: Column(
//           children: [
//             Container(
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text('BottomSheet'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );