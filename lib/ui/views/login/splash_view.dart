import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToHomePage();
  }

  @override
  Widget build(BuildContext context) {
    _screenUtilInit();
    return Scaffold(
      body: _centerWidget,
    );
  }

  void _navigateToHomePage() {
    Future.delayed(Duration(milliseconds: UIHelper.SPLASH_DURATION), () {
      Navigator.of(context).pushNamed("/onboard");
    });
  }

  void _screenUtilInit() => ScreenUtil().init(context);

  Widget get _centerWidget => Center(
        child: _helthoImages,
      );

  Widget get _helthoImages => Image.asset(UIHelper.HEALTHO_ICON);
}
