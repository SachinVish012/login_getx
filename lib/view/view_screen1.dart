import 'package:flutter/material.dart';
import 'package:login_getx/resources/image_assets/image_assets.dart';
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
        child: Image(
          image: AssetImage(ImageAsstes.img1),
        )
      ),
    );
  }
}
