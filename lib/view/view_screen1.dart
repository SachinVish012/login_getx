import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_getx/utils/utils.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Utils.toastMsg("Hello");
        },
      ),
      body: Center(
        child: Text('email'.tr),
      ),
    );
  }
}
