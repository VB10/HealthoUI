import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/rounded_button_widget.dart';

class UserRegisterView extends StatefulWidget {
  UserRegisterView({Key key}) : super(key: key);

  _UserRegisterViewState createState() => _UserRegisterViewState();
}

class _UserRegisterViewState extends State<UserRegisterView> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: UIHelper.Space20),
          child: _phoneViewColumn),
    );
  }

  Widget get _phoneViewColumn => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Spacer(),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _titleTextStyle,
                UIHelper.verticalSpace,
                _textField,
                UIHelper.verticalSpaceLarge,
                _nextButtonWrapFilled
              ],
            ),
          ),
          Spacer(),
        ],
      );

  Widget get _titleTextStyle => Text(
        "Enter Your Name",
        style: userRegisterPageTitleStyle,
      );

  Widget get _textField => TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "ie.  Ashish Chutake",
          hintStyle: phoneTextInputHintTextStyle,
          filled: true,
          fillColor: phoneInputBackgroundColor,
          enabledBorder: circleTextInputDecoration,
          border: circleTextInputDecoration,
        ),
      );

  Widget get _nextButtonWrapFilled => Container(
        height: UIHelper.Space50,
        child: SizedBox.expand(child: _nextButton),
      );

  Widget get _nextButton => RoundedButtonWidget(
        color: phoneVerifyButtonColor,
        onPress: () => Navigator.of(context).pushNamed("/verify"),
        child: Text(
          "NEXT",
          style: onBoardingNextButtonStyle,
        ),
      );
}
