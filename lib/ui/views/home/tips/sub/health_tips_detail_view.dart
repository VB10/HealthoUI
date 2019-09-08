import 'package:flutter/material.dart';
import 'package:healthoui/core/model/tips.dart';
import 'package:healthoui/ui/shared/constants.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class HealthTipsDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HealthTips tipItem = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(Constants.HEALTH_TIPS),
        backgroundColor: UIHelper.SETTINGS_APP_BAR_COLOR,
      ),
      body: Column(
        children: <Widget>[
          UIHelper.verticalSpace,
          Image.asset(tipItem.image),
          UIHelper.verticalSpace,
          Text(
            tipItem.title,
            style: profileHeaderCardSubTitle,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$index) ", style: profileHeaderCardSubTitle),
                      TextSpan(
                          text: "${tipItem.subTitle})",
                          style: profileHeaderCardNormalTitle),
                    ]),
                  ),
                  // title: Text("$index) ${tipItem.subTitle}",
                  //     style: profileHeaderCardNormalTitle),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
