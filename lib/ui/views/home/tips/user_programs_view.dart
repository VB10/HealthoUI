import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/constants.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

import 'sub/exercise_view.dart';
import 'sub/health_tips_view.dart';

class UserProgramsView extends StatefulWidget {
  UserProgramsView({Key key}) : super(key: key);

  _UserProgramsViewState createState() => _UserProgramsViewState();
}

class _UserProgramsViewState extends State<UserProgramsView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: UIHelper.SETTINGS_APP_BAR_COLOR,
          automaticallyImplyLeading: false,
          elevation: 10,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.all(0),
            centerTitle: false,
            title: TabBar(
              indicatorColor: Colors.yellow,
              indicatorWeight: 1,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.only(bottom: 0),
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.white,
              isScrollable: true,
              tabs: [
                Tab(text: Constants.HEALTH_TIPS),
                Tab(text: Constants.HEALTH_EXERCISES),
                Tab(text: Constants.HEALTH_WORKOUT_PLAN),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            HealthTipsView(),
            ExerciseView(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
