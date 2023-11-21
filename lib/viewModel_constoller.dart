import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController{

  final  emailController=TextEditingController().obs;
  final  passController=TextEditingController().obs;

  login() async {
    try{
      print("111");
      final response= await post(Uri.parse("https://reqres.in/api/login"),
      body: {
        "email": emailController.value.text,
        "password": passController.value.text
      });
      print("222");
      var body=jsonDecode(response.body);
      print(body);
      if(response.statusCode==200)
        {
          Get.snackbar("Login Successful", "Congratulations");
        }
      else
        {
          Get.snackbar("Login Failed", "Failed");
        }
    }
    catch(e){
      Get.snackbar("Error", "Failed");
    }
  }

}