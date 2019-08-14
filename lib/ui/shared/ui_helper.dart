import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  static const String HEALTHO_ICON = "assets/images/healtho.png";
  static const String LOGIN_HEALTH_IMAGE = "assets/images/login_health.png";
  static const String FACEBOOK_ICON = "assets/images/facebook_logo.png";
  static const String GOOGLE_ICON = "assets/images/google_logo.png";
  static const String MENU_ICON = "assets/icons/menu.png";
  
  static const Color SETTINGS_APP_BAR_COLOR = Color.fromRGBO(16, 43, 70, 1);
  static const Color SETTINGS_CARD_BACKGROUND_COLOR = Color.fromRGBO(252, 252, 251, 1);

  static dynamicHeight(double height) => ScreenUtil.instance.setHeight(height);
  static dynamicWidth(double width) => ScreenUtil.instance.setWidth(width);
  static dynamicSp(double fontsize) => ScreenUtil.instance.setSp(fontsize);

  static const int SPLASH_DURATION = 500;
  static const int ONBOARD_NEXT_DURATION = 1000;

  static const int ONBOARD_PAGE_COUNT = 3;

  static const double Space0 = 0;
  static const double Space5 = 5;
  static const double Space10 = 10;
  static const double Space14 = 14;
  static const double Space15 = 15;
  static const double Space20 = 20;
  static const double Space25 = 25;
  static const double Space35 = 35;
  static const double Space50 = 50;
  static const double Space100 = 100;
  static const double Space200 = 400;
  static const double Space500 = 500;
  static const double Space300 = 300;

  static Widget get verticalSpace => SizedBox(
        height: dynamicHeight(Space35),
      );
  static Widget get verticalSpaceLarge => SizedBox(
        height: dynamicHeight(Space35 * 5),
      );

    static Widget get horizontalSpace => SizedBox(
        width: dynamicWidth(Space35),
      );
}
