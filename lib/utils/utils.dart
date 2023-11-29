import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:login_getx/resources/app_colors.dart';

class Utils {

  //--------field focus change
  static void fieldfocusChange(BuildContext context,FocusNode current, FocusNode nextFocus)
  {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  //--------for toast msg
  static toastMsg(String msg){
    Fluttertoast.showToast(
        msg: msg,
        backgroundColor: AppColors.blackColor,
      gravity: ToastGravity.CENTER

    );
  }

  //----------------for snackBar
  static snackBar(String title,String message)
  {
    Get.snackbar(title, message);
  }
}