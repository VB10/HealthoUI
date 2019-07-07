import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/rounded_button_widget.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: UIHelper.Space10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[_headerImages, Spacer(), _bodyItems],
        ),
      ),
    );
  }

  Widget get _headerImages => Expanded(
        flex: 4,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(UIHelper.LOGIN_HEALTH_IMAGE),
            ),
            Image.asset(UIHelper.HEALTHO_ICON),
          ],
        ),
      );

  Widget get _bodyItems => Expanded(
        flex: 3,
        child: Column(
          children: <Widget>[
            _mobileNumberButton,
            _spaceHorizontal,
            _socialIconsBody
          ],
        ),
      );

  Widget get _mobileNumberButton => Row(
        children: <Widget>[
          Spacer(),
          Expanded(
            flex: 5,
            child: RoundedButtonWidget(
              color: Colors.grey[100],
              onPress: () {},
              child: ListTile(
                leading: Icon(Icons.keyboard),
                title: Text(
                  "Mobile Number",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      );

  Widget get _spaceHorizontal => SizedBox(
        height: ScreenUtil.instance.setHeight(UIHelper.Space35),
      );

  Widget get _socialIconsBody => Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: _socialButton(
                color: Colors.blue[400],
                textColor: Colors.white,
                image: Image.asset(UIHelper.FACEBOOK_ICON),
                text: "Facebook"),
          ),
          Spacer(),
          Expanded(
            flex: 4,
            child: _socialButton(
                color: Colors.white,
                image: Image.asset(UIHelper.GOOGLE_ICON),
                text: "Google"),
          ),
        ],
      );

  Widget _socialButton(
      {@required String text,
      @required Image image,
      Color color,
      Color textColor}) {
    return RoundedButtonWidget(
      color: color,
      child: Row(
        children: <Widget>[
          Spacer(),
          image,
          _verticalSpace,
          _socialButtonText(text, textColor)
        ],
      ),
      onPress: () {},
    );
  }

  Widget get _verticalSpace => SizedBox(
        width: UIHelper.Space15,
      );

  Widget _socialButtonText(String text, Color textColor) => Expanded(
        flex: 5,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      );
}
