import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_getx/viewModel_constoller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  LoginController controller=Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    print("-------------rebuild---------");
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.emailController.value,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              TextFormField(
                controller: controller.passController.value,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              SizedBox(
                 height: 50,
              ),
              InkWell(
                onTap: (){
                  controller.login();
                },
                child: Container(
                  height: 45,
                    color: Colors.grey,
                    child: Center(
                        child: Text("Login")
                    )
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
