import 'package:flutter/material.dart';
import 'package:healthoui/ui/views/home/exercise_tab/find_workout_plan/find_workout_plan.dart';
import 'package:healthoui/ui/views/home/exercise_tab/muscle_binding/muscle_binding.dart';
import './workout_plan.dart';

abstract class WorkoutPlanViewModel extends State<WorkoutPlan> {
  // Add your state and logic here
  void onNavigate() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => FindWorkoutPlan()));
  }

  void onNavigateMuscle() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => MuscleBinding()));
  }
}
