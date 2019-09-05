import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/rounded_button_widget.dart';

class PysiquesView extends StatefulWidget {
  @override
  _PysiquesViewState createState() => _PysiquesViewState();
}

class _PysiquesViewState extends State<PysiquesView> {
  int _currValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Spacer(
            flex: 2,
          ),
          Text(
            "Enter Your Physiques",
            style: profileHeaderCardTitle,
          ),
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  UIHelper.verticalSpace,
                  _roundedButton(
                      text: "Age",
                      onPress: () {
                        showDialog(
                            context: context,
                            builder: (context) => Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: ListTile(
                                    title: Text(
                                      "Select your level",
                                      textAlign: TextAlign.center,
                                      style: profileHeaderCardSubTitle,
                                    ),
                                    subtitle: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        _radioItem("Biginner", 1),
                                        _radioItem("Intermediate", 2),
                                        _radioItem("Advance", 3),
                                      ],
                                    ),
                                  ),
                                ));
                      }),
                  _roundedButton(text: "Height", onPress: () {}),
                  _roundedButton(text: "Weight", onPress: () {}),
                  _roundedButton(text: "Level", onPress: () {}),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _radioItem(String text, int value) {
    return Row(
      children: <Widget>[
        Radio(
          groupValue: _currValue,
          value: value,
          onChanged: (index) {
            setState(() {
              _currValue = index;
            });
          },
        ),
        Text(text)
      ],
    );
  }

  Widget _roundedButton({String text, VoidCallback onPress}) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        width: 150,
        child: RoundedButtonWidget(
          color: Colors.grey[100],
          onPress: onPress,
          child: ListTile(
            title: Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
