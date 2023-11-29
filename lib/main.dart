import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login_getx/resources/getx_localization/language.dart';
import 'package:login_getx/resources/routes/routes.dart';
import 'package:login_getx/view/view_screen1.dart';

void main() {
 /* SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));*/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Language(),
      locale: Locale('Hi','Ind'),
      fallbackLocale: Locale('en','US'),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
   getPages: AppRoutes.appRoutes(),
    );
  }
}
