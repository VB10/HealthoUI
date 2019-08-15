import 'package:flutter/material.dart';

import 'ui_helper.dart';

final phoneInputFieldBorderColor = Color.fromRGBO(212, 212, 212, 1);
final phoneInputTextColor = Color.fromRGBO(148, 165, 166, 1);
final phoneInputBackgroundColor = Color.fromRGBO(212, 212, 212, 0.5);
final phoneVerifyButtonColor = Color.fromRGBO(241, 196, 14, 1);
final phoneVerifyResendTextColor = Color.fromRGBO(142, 68, 173, 1);
final goalCardRaisedColor = Color.fromRGBO(252, 251, 251, 1);

final onBoardingNextButtonStyle = TextStyle(fontWeight: FontWeight.w600);
final onBoardingTitleTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: UIHelper.Space25);

final profileHeaderCardTitle =
    TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700);
final profileHeaderCardSubTitle =
    TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600);
final profileHeaderCardNormalTitle =
    TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400);
final profileHeaderCardNormalYellowTitle =
    TextStyle(fontSize: 12, color: Colors.yellow[600], fontWeight: FontWeight.w600);





final onBoardingSubTitleTextStyle =
    TextStyle(fontWeight: FontWeight.w400, fontSize: UIHelper.Space15);
final phoneTextInputHintTextStyle = TextStyle(
    fontSize: UIHelper.Space14,
    fontWeight: FontWeight.w600,
    color: phoneInputTextColor);
final phoneTitleTextStyle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w600);
final phoneTitleTextRegularStyle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
final phoneVerifyCodeText =
    TextStyle(fontSize: UIHelper.dynamicSp(50), fontWeight: FontWeight.w700);
final userRegisterPageTitleStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: UIHelper.Space20);

final circleTextInputDecoration = OutlineInputBorder(
    borderSide: BorderSide(width: 2, color: phoneInputFieldBorderColor),
    borderRadius: BorderRadius.circular(UIHelper.Space50));
final goalCardInputDecoration = OutlineInputBorder(
    borderRadius: BorderRadius.circular(UIHelper.Space35),
    borderSide: BorderSide(color: Colors.grey[300]));
