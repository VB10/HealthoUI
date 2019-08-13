import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthoui/ui/shared/constants.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: UIHelper.SETTINGS_APP_BAR_COLOR,
          leading: Image.asset(UIHelper.MENU_ICON),
          title: Text(Constants.SETTINGS_TITLE),
          centerTitle: false,
          actions: <Widget>[_rigtActionItem],
        ),
        body: ListView(
          children: <Widget>[
            UIHelper.verticalSpace,
            _settingsProfileCard(),
            _settingsCard(icon: Icons.language, title: "Language Options")
          ],
        ),
      ),
    );
  }

  Widget get _rigtActionItem => Chip(
        label: Icon(Icons.search),
        backgroundColor: UIHelper.SETTINGS_APP_BAR_COLOR,
        shape: Border(),
      );

  Widget _profileIcon({String url}) {
    return CircleAvatar(
      backgroundImage: NetworkImage(url),
    );
  }

  Widget _settingsProfileCard() {
    return Card(
      elevation: UIHelper.Space5,
      color: UIHelper.SETTINGS_CARD_BACKGROUND_COLOR,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UIHelper.Space10)),
      child: ListTile(
        title: Text("Profile"),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(Constants.PROFILE_IMAGE),
        ),
      ),
    );
  }

  Widget _settingsCard({String title, IconData icon}) {
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
      ),
    );
  }
}
