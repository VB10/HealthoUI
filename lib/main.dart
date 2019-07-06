import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthoui/ui/views/login/onboarding_view.dart';
import 'package:healthoui/ui/views/login/splash_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "/",
      theme: ThemeData(fontFamily: "Poppins"),
      routes: {
        "/": (context) => SplashView(),
        "/onboard": (context) => OnBoardingView(),
      },
    );
  }
}
