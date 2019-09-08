import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class RadioView extends StatefulWidget {
  final Function(String text) onPress;

  const RadioView({Key key, this.onPress}) : super(key: key);
  @override
  _RadioViewState createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  int _currValue = 1;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }

  Widget _radioItem(String text, int value) {
    return Row(
      children: <Widget>[
        Radio(
          activeColor: UIHelper.EXERCISES_CARD_BOTTOM,
          groupValue: _currValue,
          value: value,
          onChanged: (index) {
            setState(() {
              _currValue = index;
            });
            widget.onPress("$text");
          },
        ),
        Text(text)
      ],
    );
  }
}
