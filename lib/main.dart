import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthoui/ui/views/login/login_view.dart';
import 'package:healthoui/ui/views/login/onboarding_view.dart';
import 'package:healthoui/ui/views/login/splash_view.dart';

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
        SystemUiOverlayStyle(statusBarColor: Colors.red));
    return MaterialApp(
      title: 'Material App',
      initialRoute: "/",
      theme: ThemeData(fontFamily: "Poppins"),
      routes: {
        "/": (context) => SplashView(),
        "/onboard": (context) => OnBoardingView(),
        "/login": (context) => LoginView(),
      },
    );
  }
}
