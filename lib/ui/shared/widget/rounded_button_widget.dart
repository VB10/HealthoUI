import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class RoundedButtonWidget extends StatelessWidget {
  const RoundedButtonWidget(
      {Key key, @required this.child, @required this.onPress, this.color})
      : super(key: key);

  final Widget child;
  final VoidCallback onPress;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      child: this.child,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UIHelper.Space25),
          borderSide: BorderSide(color: Colors.white10)),
      onPressed: this.onPress,
    );
  }
}
