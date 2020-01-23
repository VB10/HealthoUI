import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/widget/text/column_text_reverse.dart';
import './introduction.dart';

abstract class IntroductionViewModel extends State<Introduction> {
  // Add your state and logic here
  final String completeText = "Complete the Beginner Program";
  final String description = "This is a beginner quick start guide that will"
      "move you from day 1 to day 60, providing"
      "you with starting training and instructions...";

  List<Widget> items() {
    return [
      BoldSoftColumntText(
        title: "Duration",
        description: "5 Weeks",
      ),
      BoldSoftColumntText(
        title: "Goal",
        description: "5 Weeks",
      ),
      BoldSoftColumntText(
        title: "Training Level",
        description: "5 Weeks",
      ),
      BoldSoftColumntText(
        title: "Days per Week",
        description: "5 Weeks",
      ),
      BoldSoftColumntText(
        title: "Target Gender",
        description: "5 Weeks",
      ),
    ];
  }
}
