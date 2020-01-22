import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  static const String HEALTHO_ICON = "assets/images/healtho.png";
  static const String LOGIN_HEALTH_IMAGE = "assets/images/login_health.png";
  static const String FACEBOOK_ICON = "assets/images/facebook_logo.png";
  static const String GOOGLE_ICON = "assets/images/google_logo.png";
  static const String MENU_ICON = "assets/icons/menu.png";

  static const String PERSONAL_TRAINER = "assets/images/personal_trainer.png";

  static const Color SETTINGS_APP_BAR_COLOR = Color.fromRGBO(16, 43, 70, 1);
  static const Color REMINDER_CARD_YELLOW = Color.fromRGBO(241, 196, 14, 100);
  static const Color SETTINGS_CARD_BACKGROUND_COLOR =
      Color.fromRGBO(252, 252, 251, 1);
  static const Color EXERCISES_CARD_BOTTOM = Color.fromRGBO(241, 196, 14, 1);

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
  static const double Space30 = 30;
  static const double Space35 = 35;
  static const double Space50 = 50;
  static const double Space80 = 80;
  static const double Space100 = 100;
  static const double Space200 = 200;
  static const double Space250 = 250;
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

  static AppBar appBar(String text) => AppBar(
        title: text == null ? text : Text(text),
        brightness: Platform.isAndroid ? Brightness.light : Brightness.dark,
        backgroundColor: UIHelper.SETTINGS_APP_BAR_COLOR,
      );
}

class FontSizeValue {
  static const double NORMAL = 25;
  static const double HIGH = 20;
  static const double MEDIUM = 15;
  static const double LOW = 13;
  static const double VERY_LOW = 10;
}

class SpaceValue {
  static const double NORMAL = 40;
  static const double HIGH = 60;
  static const double MEDIUM = 30;
  static const double LOW = 20;
  static const double VERY_LOW = 15;
  static const double VERY_LOW_HALF = 8;
}
