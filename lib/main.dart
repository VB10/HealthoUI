import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthoui/ui/views/home/home_tab_view.dart';
import 'package:healthoui/ui/views/login/login_view.dart';
import 'package:healthoui/ui/views/login/onboarding_view.dart';
import 'package:healthoui/ui/views/login/phone_view.dart';
import 'package:healthoui/ui/views/login/register_goal_view.dart';
import 'package:healthoui/ui/views/login/register_view.dart';
import 'package:healthoui/ui/views/login/verify_phone.view.dart';
import 'package:healthoui/ui/views/login/verify_view.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   systemNavigationBarColor: Colors.blue, // navigation bar color
  //   statusBarColor: Colors.pink, // status bar color
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return MaterialApp(
      title: 'Material App',
      initialRoute: "/hometab",
      theme: ThemeData(fontFamily: "Poppins"),
      routes: {
        // "/": (context) => SplashView(),
        "/": (context) => PhoneView(),
        "/onboard": (context) => OnBoardingView(),
        "/login": (context) => LoginView(),
        "/phone": (context) => PhoneView(),
        "/verify": (context) => VerifyView(),
        "/verifyPhone": (context) => VerifyPhoneView(),
        "/userRegister": (context) => UserRegisterView(),
        "/userGoal": (context) => UserRegisterGoalView(),
        "/hometab": (context) => HomeTabView(),
      },
    );
  }
}
