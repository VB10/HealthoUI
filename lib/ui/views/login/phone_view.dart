import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthoui/core/form_helper.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/rounded_button_widget.dart';

class PhoneView extends StatefulWidget {
  PhoneView({Key key}) : super(key: key);

  _PhoneViewState createState() => _PhoneViewState();
}

class _PhoneViewState extends State<PhoneView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: UIHelper.Space20),
          child: Form(key: _formKey, child: _phoneViewColumn)),
    );
  }

  Widget get _phoneViewColumn => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _titleTextStyle,
          UIHelper.verticalSpace,
          _textField,
          UIHelper.verticalSpace,
          _nextButtonWrapFilled
        ],
      );

  Widget get _titleTextStyle => Text(
        AppLocalizations.of(context).tr('phoneViewTitle'),
        style: phoneTitleTextStyle,
      );

  Widget get _textField => TextFormField(
        keyboardType: TextInputType.phone,
        validator: FormHelper.checkPhoneNumber,
        decoration: InputDecoration(
          hintText: "i.e +91 9730627087",
          hintStyle: phoneTextInputHintTextStyle,
          filled: true,
          prefixText: "+90",
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
        onPress: () {
          if (_formKey.currentState.validate()) {
            Navigator.of(context).pushNamed("/verify");
          }
        },
        child: Text(
          "VERIFY",
          style: onBoardingNextButtonStyle,
        ),
      );
}
