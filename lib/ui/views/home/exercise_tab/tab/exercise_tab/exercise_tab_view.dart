import 'dart:io';

import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/theme.dart';
import 'package:healthoui/ui/shared/widget/tabbar/padding_text_tab.dart';
import 'package:healthoui/ui/views/home/exercise_tab/workout_plan/workout_plan.dart';

import './exercise_tab_view_model.dart';
import '../../../../../shared/ui_helper.dart';

class ExerciseTabView extends ExerciseTabViewModel {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: workoutPlanIndex,
      child: Scaffold(
        appBar: _appBar,
        body: Column(
          children: <Widget>[_tabbarContainer, _tabbarView],
        ),
      ),
    );
  }

  AppBar get _appBar {
    return AppBar(
      brightness: Platform.isAndroid ? Brightness.light : Brightness.dark,
      backgroundColor: UIHelper.SETTINGS_APP_BAR_COLOR,
      elevation: 2,
      leading: Image.asset(UIHelper.MENU_ICON),
      title: Text("Healtho"),
      centerTitle: false,
      actions: <Widget>[IconButton(icon: Icon(Icons.search), onPressed: () {})],
    );
  }

  Widget get _tabbarContainer => Stack(
        children: <Widget>[_background, _tabbar],
      );

  Widget get _background => Positioned.fill(
        bottom: indicatorWeight / 2,
        child: Container(
          color: UIHelper.SETTINGS_APP_BAR_COLOR,
        ),
      );

  Widget get _tabbar => TabBar(
        isScrollable: true,
        labelColor: yellowSearchCardColor,
        unselectedLabelColor: Colors.white70,
        indicatorColor: yellowSearchCardColor,
        indicatorWeight: indicatorWeight,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: <Widget>[
          PaddingTextTab("  Dummy    "),
          PaddingTextTab("Exercises"),
          PaddingTextTab("Workout Plan"),
          PaddingTextTab("Challenges"),
        ],
      );

  Widget get _tabbarView => Expanded(
        child: TabBarView(
          children: <Widget>[
            Container(),
            Container(),
            WorkoutPlan(),
            Container(),
          ],
        ),
      );
}

extension _ExerciseTabView on ExerciseTabView {
  int get workoutPlanIndex => 2;
  int get exerciseIndex => 1;
  int get challangesIndex => 3;
  int get tabCount => 4;
  double get indicatorWeight => 5;
}
