import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/constants.dart';
import 'package:healthoui/ui/views/home/settings_view.dart';

class HomeTabView extends StatefulWidget {
  @override
  _HomeTabViewState createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: TabBar(
            labelPadding: EdgeInsets.all(0),
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            tabs: <Widget>[
              _tabBarItem(icon: Icons.notifications),
              _tabBarItem(icon: Icons.access_time),
              _tabBarItem(icon: Icons.settings),
              _tabProfileIcon(url: Constants.PROFILE_IMAGE)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SettingsView(),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
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
