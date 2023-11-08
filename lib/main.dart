import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_1/10_GetX_Internationalization.dart';
import 'package:getx_1/11.GetXBinding.dart';
import 'package:getx_1/11a_all_controllerBinding.dart';
import 'package:getx_1/11d_home.dart';
import 'package:getx_1/11e_home_controllerBinding.dart';
import 'package:getx_1/11f_MyAppControllerBinding.dart';
import 'package:getx_1/12_GetStorage&EmailValidation.dart';
import 'package:getx_1/1_snackBar.dart';
import 'package:getx_1/2_show_Dialog.dart';
import 'package:getx_1/3_Bottom_Sheet.dart';
import 'package:getx_1/4_Navigator.dart';
import 'package:getx_1/5_NamedRoute.dart';

import '10_Messages.dart';

void main() async {
  // MyAppControllerBinding.dependencies();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      /*  //for binding
      
      initialBinding: AllControllerBinding(),
      */

      /*  //Getx Internationalization 3 lines
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en_US'), */
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomePageBinding(),
          binding: HomeControllerBindings(),
        )
      ],
      title: 'Flutter Demo',
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      // getPages: [
      //   GetPage(
      //     name: '/',
      //     page: () => MyApp(),
      //   ),
      //   GetPage(
      //     name: '/Bottom',
      //     page: () => BottomSheetWidget(),
      //   ),
      //   GetPage(
      //     name: '/NaviRoute',
      //     page: () => NavigatorWidget(),
      //   ),
      //   GetPage(
      //     name: '/NamedRoute/:someValue',
      //     page: () => NamedRouteWidget(),
      //     transition: Transition.leftToRight,
      //   ),
      // ],
      // unknownRoute: GetPage(name: '/notfound', page: () => UnKnownRoue()),
      home: BottomSheetWidget(),
    );
  }
}
