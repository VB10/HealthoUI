import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/constants.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/views/home/notifcation/notification_view.dart';
import 'package:healthoui/ui/views/home/reminder/reminder_view.dart';
import 'package:healthoui/ui/views/home/settings_view.dart';

class HomeTabView extends StatefulWidget {
  @override
  _HomeTabViewState createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView>
    with SingleTickerProviderStateMixin {
  /// save current page state
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  AppBar get _appBar {
    return AppBar(
      brightness: Brightness.dark,
      backgroundColor: UIHelper.SETTINGS_APP_BAR_COLOR,
      leading: Image.asset(UIHelper.MENU_ICON),
      title: Text(_appBarTitle),
      centerTitle: false,
      actions: <Widget>[_rigtActionItem],
    );
  }

  String get _appBarTitle {
    switch (_currentPageIndex) {
      case 0:
        return Constants.NOTIFICATION_TITLE;
      case 1:
        return Constants.REMINDER_TITLE;
      default:
        return Constants.SETTINGS_TITLE;
    }
  }

  Widget get _rigtActionItem => Chip(
        label: Icon(Icons.search),
        backgroundColor: UIHelper.SETTINGS_APP_BAR_COLOR,
        shape: Border(),
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Constants.TABBAR_COUNT,
      child: Scaffold(
        appBar: _appBar,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: TabBar(
            labelPadding: EdgeInsets.all(0),
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            onTap: (int index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            tabs: <Widget>[
              _tabBarItem(icon: Icons.notifications),
              _tabBarItem(icon: Icons.access_time),
              _tabBarItem(icon: Icons.settings),
              _tabProfileIcon(url: Constants.PROFILE_IMAGE)
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            NotifiactionView(),
            ReminderView(),
            SettingsView(),
            Container(),
          ],
        ),
      ),
    );
  }

  Widget _tabBarItem({IconData icon}) {
    return Tab(
      icon: Icon(
        icon,
        color: Colors.grey,
      ),
    );
  }

  Widget _tabProfileIcon({String url}) {
    return Tab(
      child: FlatButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onPressed: () {},
        child: Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(url),
          ),
        ),
      ),
    );
  }
}
