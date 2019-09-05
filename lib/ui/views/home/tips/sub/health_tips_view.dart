import 'package:flutter/material.dart';
import 'package:healthoui/core/model/tips.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class HealthTipsView extends StatefulWidget {
  @override
  _HealthTipsViewState createState() => _HealthTipsViewState();
}

class _HealthTipsViewState extends State<HealthTipsView> {
  List<HealthTips> listHealthTips = [];
  @override
  void initState() {
    super.initState();

    listHealthTips.add(HealthTips(
        title: "A Diet Without Exercise is Useless. ",
        subTitle: " Interval Training is a form of exercise in which"
            "you alternate between two or more different "
            "exercise . This Consist of doing an exercise at"
            "a very high  level intensity for a short bursts.",
        image: UIHelper.PERSONAL_TRAINER));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      //We have single value so set just zero.
      itemBuilder: (context, index) => _card(listHealthTips[0]),
    );
  }

  Widget _card(HealthTips tips) => InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("/healthTipsDetail",arguments: tips);
        },
        child: Card(
          margin: EdgeInsets.only(top: 20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Container(
            height: 250,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  // Container height - 20
                  top: 80,
                  child: Image.asset(tips.image, fit: BoxFit.fill),
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: UIHelper.SETTINGS_CARD_BACKGROUND_COLOR,
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10), top: Radius.circular(10)),
                  ),
                  child: ListTile(
                    title: Text(tips.title),
                    subtitle: Text(
                      tips.subTitle,
                      maxLines: 2,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
