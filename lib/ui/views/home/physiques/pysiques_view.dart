import 'package:flutter/material.dart';
import 'package:healthoui/core/model/physique.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/rounded_button_widget.dart';
import 'package:numberpicker/numberpicker.dart';

import 'radio_view.dart';

class PysiquesView extends StatefulWidget {
  @override
  _PysiquesViewState createState() => _PysiquesViewState();
}

class _PysiquesViewState extends State<PysiquesView> {
  Physique _physique;

  @override
  void initState() {
    super.initState();
    _physique = Physique(age: "", height: "", weight: "", level: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Spacer(flex: 2),
          Text("Enter Your Physiques", style: profileHeaderCardTitle),
          Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  UIHelper.verticalSpace,
                  _roundedButton(
                      text: "Age",
                      rightText: _physique.age,
                      onPress: showAgeDialog),
                  _roundedButton(
                      text: "Height",
                      rightText: _physique.height,
                      onPress: showHeightDialog),
                  _roundedButton(
                      text: "Weight",
                      rightText: _physique.weight,
                      onPress: showWeightDialog),
                  _roundedButton(
                      text: "Level",
                      rightText: _physique.level,
                      onPress: showLevelDialog),
                  UIHelper.verticalSpaceLarge,
                  RoundedButtonWidget(
                    color: UIHelper.EXERCISES_CARD_BOTTOM,
                    onPress: () {},
                    child: ListTile(
                      title: Text(
                        "Confirm Detail",
                        textAlign: TextAlign.center,
                        style: profileHeaderCardTitle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  double _currentDoubleValue = 3.0;
  Future showHeightDialog() async {
    var value = await showDialog<double>(
      context: context,
      builder: (BuildContext context) {
        return NumberPickerDialog.decimal(
    
          minValue: 1,
          maxValue: 5,
          decimalPlaces: 2,
          initialDoubleValue: _currentDoubleValue,
          title: Text("Pick a height number"),
        );
      },
    );
    if (value != null) {
      _physique.height = _currentDoubleValue.toString();
      setState(() {});
    }
  }

  void showWeightDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          title: Text(
            "Select your Weight",
            textAlign: TextAlign.center,
            style: profileHeaderCardSubTitle,
          ),
          subtitle: Container(
              height: 200,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Spacer(),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: false,
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _physique.weight = index.toString();
                            });
                            Navigator.pop(context);
                          },
                          child: Text(
                            "$index",
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    ),
                  ),
                  Center(
                    child: Text(
                      "kg",
                      style: profileHeaderCardTitle,
                    ),
                  ),
                  Spacer(),
                ],
              )),
        ),
      ),
    );
  }

  void showAgeDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: _ageDialog),
    );
  }

  void showLevelDialog() {
    showDialog(
        context: context,
        builder: (context) => Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: RadioView(
                onPress: (text) {
                  setState(() {
                    _physique.level = "$text";
                  });
                  Navigator.pop(context);
                },
              ),
            ));
  }

  Widget get _ageDialog {
    return ListTile(
      title: Text(
        "Select your Age",
        textAlign: TextAlign.center,
        style: profileHeaderCardSubTitle,
      ),
      subtitle: Container(
        height: 200,
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  _physique.age = index.toString();
                });
                Navigator.pop(context);
              },
              child: Text(
                "$index",
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _roundedButton({String text, String rightText, VoidCallback onPress}) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        width: rightText.isEmpty ? 200 : null,
        child: RoundedButtonWidget(
          color: Colors.grey[100],
          onPress: onPress,
          child: ListTile(
              title: rightText.isEmpty
                  ? Text(text, textAlign: TextAlign.center)
                  : null,
              leading: rightText.isEmpty ? null : Text(text),
              trailing: rightText.isEmpty
                  ? null
                  : Text(rightText,
                      textAlign: rightText.isEmpty
                          ? TextAlign.center
                          : TextAlign.start)),
        ),
      ),
    );
  }
}
