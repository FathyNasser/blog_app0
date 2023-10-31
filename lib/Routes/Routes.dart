import 'package:blog_app/App/view/show_user_data.dart';

import 'package:get/get.dart';

import '../App/view/LoginScreen.dart';
import '../App/view/sign_upScreen.dart';
import '../App/view/home.dart';

class RoutesClass {
  static String loginScreen = "/loginScreen";
  static String signUpScreen = "/signUpScreen";
  static String showUserData = "/showUserData";
  static String home = "/";

  static String getLoginRoute() => loginScreen;
  static String getSignUpRoute() => signUpScreen;
  static String getHomeRoute() => home;

  static List<GetPage> routes = [
    GetPage(name: loginScreen, page: () => Login_Screen()),
    GetPage(name: signUpScreen, page: () => SignUp_Screen()),
    GetPage(name: home, page: () => HomeScreen()),
    GetPage(name: showUserData, page: () => ShowUserData()),
  ];
}
