import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/rounded_button_widget.dart';

class VerifyPhoneView extends StatefulWidget {
  @override
  _VerifyViewState createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyPhoneView> {
  bool _isVerifyComplete = false;
  FocusNode _firstFocus;
  FocusNode _secondFocus;
  FocusNode _thirdFocus;
  FocusNode _fourthFocus;

  @override
  void initState() {
    super.initState();
    _firstFocus = new FocusNode();
    _secondFocus = new FocusNode();
    _thirdFocus = new FocusNode();
    _fourthFocus = new FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: UIHelper.Space20),
        child: Center(child: _phoneInputVerify),
      ),
    );
  }

  Widget get _phoneInputVerify => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(
            flex: 2,
          ),
          Expanded(
              flex: 16,
              child: _isVerifyComplete ? _succesVerifyView : _inputPhoneView),
          Spacer(
            flex: 2,
          ),
        ],
      );

  Widget get _titleText => Text(
        "Enter The code that was send to your Entered Mobile Number",
        textAlign: TextAlign.center,
        style: phoneTitleTextRegularStyle,
      );

  Widget get _changeNumber => Text(
        "Change Number",
        style: TextStyle(color: Colors.grey),
      );

  Widget get _resendText => Text(
        "Resend (30)",
        style: TextStyle(color: phoneVerifyResendTextColor),
      );

  Widget _circleTextField(
          {FocusNode node, FocusNode nextNode, FocusNode backNode}) =>
      TextField(
        maxLength: 1,
        focusNode: node,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        onChanged: (val) {
          if (val.isNotEmpty) {
            if (node == _fourthFocus) {
              setState(() {
                _isVerifyComplete = true;
              });
              // When Complete
              Future.delayed(Duration(milliseconds: UIHelper.Space300.toInt()),
                  () {
                Navigator.of(context).pushNamed("/userGoal");
              });
            } else {
              FocusScope.of(context).requestFocus(nextNode);
            }
          } else {
            FocusScope.of(context).requestFocus(backNode);
          }
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: phoneInputBackgroundColor,
          counterText: "",
          enabledBorder: _outlineInputBorder,
          border: _outlineInputBorder,
          focusedBorder: _outlineInputBorder,
        ),
        style: phoneVerifyCodeText,
      );

  OutlineInputBorder get _outlineInputBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(UIHelper.Space50),
      borderSide: BorderSide(color: Colors.grey[300]));

  Widget get _nextButtonWrapFilled => Container(
        height: UIHelper.Space50,
        child: SizedBox.expand(child: _nextButton),
      );

  Widget get _nextButton => RoundedButtonWidget(
        color: phoneVerifyButtonColor,
        onPress: () => Navigator.of(context).pushNamed("/verify"),
        child: Text(
          "VERIFY",
          style: onBoardingNextButtonStyle,
        ),
      );

  Widget get _inputPhoneView => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _titleText,
          UIHelper.verticalSpace,
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child:
                    _circleTextField(node: _firstFocus, nextNode: _secondFocus),
              ),
              Spacer(),
              Expanded(
                  flex: 3,
                  child: _circleTextField(
                      node: _secondFocus,
                      nextNode: _thirdFocus,
                      backNode: _firstFocus)),
              Spacer(),
              Expanded(
                flex: 3,
                child: _circleTextField(
                    node: _thirdFocus,
                    nextNode: _fourthFocus,
                    backNode: _secondFocus),
              ),
              Spacer(),
              Expanded(
                flex: 3,
                child:
                    _circleTextField(node: _fourthFocus, backNode: _thirdFocus),
              ),
            ],
          ),
          UIHelper.verticalSpace,
          _nextButtonWrapFilled,
          UIHelper.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[_changeNumber, _resendText],
          )
        ],
      );

  Widget get _succesVerifyView => Column(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.checkCircle,
            color: Colors.green,
            size: UIHelper.dynamicHeight(UIHelper.Space200),
          ),
          UIHelper.verticalSpace,
          Text(
            "Verification Code Send on your Registered Mobile Number ",
            textAlign: TextAlign.center,
            style: phoneTitleTextStyle,
          ),
        ],
      );
}
