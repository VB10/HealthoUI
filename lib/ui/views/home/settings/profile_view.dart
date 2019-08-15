import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/constants.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/settings_card_widget.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key key}) : super(key: key);

  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: UIHelper.Space20),
        children: <Widget>[
          UIHelper.verticalSpace,
          _profileCard,
          _settingsNormalCard(
              title: "Completed Task",
              icon: Icons.done_outline,
              rightWidget: Text(
                "3",
                style: profileHeaderCardSubTitle,
              )),
          _settingsNormalCard(
              title: "Level",
              icon: Icons.battery_charging_full,
              rightWidget: Text(
                "Beginner",
                style: profileHeaderCardSubTitle,
              )),
          _settingsNormalCard(
              title: "Goals",
              icon: Icons.track_changes,
              rightWidget: Text(
                "Mass Gain",
                style: profileHeaderCardSubTitle,
              )),
          _settingsNormalCard(
              title: "Challanges",
              icon: Icons.track_changes,
              rightWidget: Text(
                "4",
                style: profileHeaderCardSubTitle,
              )),
          _settingsNormalCard(
              title: "Plans",
              icon: Icons.track_changes,
              rightWidget: Text(
                "2",
                style: profileHeaderCardSubTitle,
              )),
          _settingsNormalCard(
              title: "Fitness Device",
              icon: Icons.devices,
              rightWidget: Text(
                "MI",
                style: profileHeaderCardSubTitle,
              )),
          _settingsNormalCard(icon: Icons.share, title: Constants.REFER_FRIEND),
        ],
      ),
    );
  }

  Widget get _appBar => AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text("Profile"),
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(title: profileHeaderCardTitle),
        backgroundColor: Colors.white,
      );

  Widget _settingsNormalCard(
          {String title, IconData icon, Widget rightWidget}) =>
      SettingsCardWidget(
        title: title,
        icon: icon,
        trailing: rightWidget,
      );

  Widget get _profileCard => Card(
        color: UIHelper.SETTINGS_CARD_BACKGROUND_COLOR,
        elevation: 0,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: UIHelper.Space100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(UIHelper.Space15),
                  child:  
                      Image.network(Constants.PROFILE_IMAGE, fit: BoxFit.cover),
                ),
              ),
            ),
            UIHelper.horizontalSpace,
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Veli Bacik", style: profileHeaderCardTitle),
                  Text("7219796607", style: profileHeaderCardSubTitle),
                  Text("vbacik.10@gmail.com",
                      style: profileHeaderCardNormalTitle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.place, size: UIHelper.Space15),
                      Text("Kartal", style: profileHeaderCardNormalTitle)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
}
