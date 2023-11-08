import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/10_Messages.dart';
import 'package:getx_1/10_controller.dart';

class GetxInternationalizationWidget extends StatefulWidget {
  const GetxInternationalizationWidget({super.key});

  @override
  State<GetxInternationalizationWidget> createState() =>
      _GetxInternationalizationWidgetState();
}

class _GetxInternationalizationWidgetState
    extends State<GetxInternationalizationWidget> {
  languageController lc = Get.put(languageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Internalization'),
      ),
      body:
          // GetMaterialApp(
          // translations: Messages(),
          // locale: Locale('en', 'US'),
          // fallbackLocale: Locale('en_US'),
          Column(
        children: [
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('hello'.tr),
                  ElevatedButton(
                    onPressed: () {
                      lc.changeLanguage('fr', 'FR');
                    },
                    child: Text('French'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      lc.changeLanguage('en', 'US');
                    },
                    child: Text('USA'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      lc.changeLanguage('hi', 'IN');
                    },
                    child: Text('Hindi'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
