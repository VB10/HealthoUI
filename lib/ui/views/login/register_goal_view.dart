import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/rounded_button_widget.dart';

class UserRegisterGoalView extends StatefulWidget {
  UserRegisterGoalView({Key key}) : super(key: key);

  _UserRegisterGoalViewState createState() => _UserRegisterGoalViewState();
}

class _UserRegisterGoalViewState extends State<UserRegisterGoalView> {
  int _selectCardIndex = 0;
  List<String> goalCardList;

  @override
  void initState() {
    super.initState();
    goalCardList = [];
    goalCardList.add("Fat Loss");
    goalCardList.add("Weight Gain");
    goalCardList.add("Muscle Gain");
    goalCardList.add("Others");
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: UIHelper.Space20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(),
              _titleTextStyle,
              Expanded(flex: 4, child: _goalCardList),
            ],
          )),
    );
  }

  Widget get _goalCardList => ListView.builder(
        itemCount: goalCardList.length,
        itemBuilder: (context, index) =>
            _cardGoalItem(goalCardList[index], index),
      );
  Widget _cardGoalItem(String text, int index) => Card(
        color: goalCardRaisedColor,
        shape: goalCardInputDecoration,
        child: ListTile(
          onTap: () => _cardOnTap(index),
          leading: CircleAvatar(
            radius: UIHelper.Space14,
            backgroundColor: _backgroundColor(index),
          ),
          title: Text(text),
        ),
      );

  Widget get _titleTextStyle => Text(
        "Select Your Goal",
        style: userRegisterPageTitleStyle,
      );

  void _cardOnTap(int index) {
    setState(() {
      _selectCardIndex = index;
    });
  }

  Color _backgroundColor(int index) => _selectCardIndex == index
      ? phoneVerifyButtonColor
      : Colors.grey[UIHelper.Space300.toInt()];
}
