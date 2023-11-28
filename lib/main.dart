import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_getx/resources/routes/routes.dart';
import 'package:login_getx/view/view_screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
       getPages: AppRoutes.appRoutes(),
    );
  }
}
