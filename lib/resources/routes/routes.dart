import 'package:get/get.dart';
import 'package:login_getx/resources/routes/routes_name.dart';
import 'package:login_getx/view/view_screen1.dart';

class AppRoutes{
  static appRoutes()=>[ GetPage(name: RoutesName.homeScreen, page:() => HomeView())];
}