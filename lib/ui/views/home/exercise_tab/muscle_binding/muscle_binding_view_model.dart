import 'package:flutter/material.dart';
import 'package:healthoui/ui/views/home/exercise_tab/introduction/introduction.dart';
import './muscle_binding.dart';

abstract class MuscleBindingViewModel extends State<MuscleBinding> {
  // Add your state and logic here
  final double progressValue = 0.3;
  String text = "This is a beginner quick start guide that will" +
      "move you from day 1 to day 60, providing " +
      "you with starting training and instructions...";

  void onPressed() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => Introduction()));
  }
}
