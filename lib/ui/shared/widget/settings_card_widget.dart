import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class SettingsCardWidget extends StatelessWidget {
  const SettingsCardWidget(
      {Key key, @required this.title, @required this.icon, this.trailing})
      : super(key: key);

  final String title;
  final IconData icon;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: UIHelper.Space0,
      color: UIHelper.SETTINGS_CARD_BACKGROUND_COLOR,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UIHelper.Space10)),
      child: ListTile(
        title: Text(title),
        leading: Icon(
          icon,
          color: Colors.yellow,
        ),
        trailing: trailing
      ),
    );
  }
}
