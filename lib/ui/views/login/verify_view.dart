import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class VerifyView extends StatefulWidget {
  @override
  _VerifyViewState createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  bool _isVerifyComplete = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: UIHelper.Space500.toInt())).then((val) {
      setState(() {
        _isVerifyComplete = true;
      });
    }).whenComplete(() {
      // When complete
      Future.delayed(Duration(milliseconds: UIHelper.Space300.toInt()), () {
        Navigator.of(context).pushNamed("/verifyPhone");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: UIHelper.Space20),
        child: Center(
            child: _isVerifyComplete ? _succesVerify : _verifyViewColumn),
      ),
    );
  }

  Widget get _verifyViewColumn => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
          ),
          UIHelper.verticalSpace,
          Text("Verifying Your Mobile Number")
        ],
      );

  Widget get _succesVerify => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 6,
            child: Column(
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
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      );
}
