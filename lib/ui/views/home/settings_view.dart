import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/constants.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/settings_card_widget.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  int _selectedLangIndex = 0;
  int _tempSelectedIndex = 0;
  bool _notification = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            UIHelper.verticalSpace,
            _settingsProfileCard(),
            _settingsLangOptionsCard(
                icon: Icons.language, title: Constants.LANGUAGE_OPTIONS),
            _settingsNormalCard(
                icon: Icons.healing, title: Constants.HEALTH_DATA),
            _settingsNotificationsCard(
                icon: Icons.notifications, title: Constants.NOTIFICATIONS),
            _settingsNormalCard(
                icon: Icons.share, title: Constants.REFER_FRIEND),
            _settingsNormalCard(
                icon: Icons.rate_review, title: Constants.FEEDBACK),
            _settingsNormalCard(icon: Icons.star, title: Constants.RATE_US),
            _settingsNormalCard(
                icon: Icons.exit_to_app, title: Constants.LOG_OUT),
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

  Widget get _profileIcon => CircleAvatar(
        backgroundImage: NetworkImage(Constants.PROFILE_IMAGE),
      );

  Widget _settingsProfileCard() {
    return Card(
      elevation: UIHelper.Space5,
      color: UIHelper.SETTINGS_CARD_BACKGROUND_COLOR,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UIHelper.Space10)),
      child: ListTile(
        title: Text("Profile"),
        leading: _profileIcon,
        onTap: () => Navigator.of(context).pushNamed("/profile"),
      ),
    );
  }

  Widget _settingsNormalCard({String title, IconData icon}) =>
      SettingsCardWidget(
        title: title,
        icon: icon,
      );

  Widget _settingsNotificationsCard({String title, IconData icon}) =>
      SettingsCardWidget(
        title: title,
        icon: icon,
        trailing: FlatButton(
          child: Text(_notification ? "On" : "Off"),
          onPressed: () {
            setState(() {
              _notification = !_notification;
            });
          },
        ),
      );

  Widget _settingsLangOptionsCard({String title, IconData icon}) =>
      SettingsCardWidget(
        title: title,
        icon: icon,
        trailing: FlatButton(
          child: Text(Constants.LANGUAGES[_selectedLangIndex]),
          onPressed: () async {
            await showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) {
                return _buildBottomPicker(
                  CupertinoPicker(
                    itemExtent: UIHelper.Space50,
                    backgroundColor: CupertinoColors.white,
                    onSelectedItemChanged: (int index) {
                      _tempSelectedIndex = index;
                    },
                    children: List<Widget>.generate(Constants.LANGUAGES.length,
                        (int index) {
                      return Center(
                        child: Text(Constants.LANGUAGES[index]),
                      );
                    }),
                  ),
                );
              },
            );
          },
        ),
      );

  //

  Widget _buildBottomPicker(Widget picker) {
    return Container(
      height: UIHelper.dynamicHeight(UIHelper.Space500),
      color: CupertinoColors.white,
      child: SafeArea(
        top: false,
        child: Column(
          children: <Widget>[
            Expanded(child: picker),
            FlatButton.icon(
              icon: Icon(Icons.check),
              label: Text("Save"),
              onPressed: () {
                /// Check changes [_tempSelectedIndex] & [_selectedLangIndex]
                if (_tempSelectedIndex != _selectedLangIndex) {
                  setState(() {
                    _selectedLangIndex = _tempSelectedIndex;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
