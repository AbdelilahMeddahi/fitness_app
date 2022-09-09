import 'dart:ui';
import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/material.dart';

class Workout {
  Workout({
    this.workoutName = '',
    this.workoutImage = '',
    this.workoutDescription = '',
    this.workoutDuration = '',
    this.workoutCalories = '',
    this.color = Colors.blue,
  });

  String workoutName;
  String workoutImage;
  String workoutDescription;
  String workoutDuration;
  String workoutCalories;
  Color color;
}

var testWidget = Workout(
    workoutName: "Weight Loss\nTraining",
    workoutCalories: "350 Cal",
    workoutDuration: "40 min",
    workoutDescription: "Full Body Workout",
    workoutImage: "assets/yoga6.png");
var topWorkouts = [
  Workout(
      color: cyanColor,
      workoutName: "Weight Loss\nTraining",
      workoutCalories: "350 Cal",
      workoutDuration: "40 min",
      workoutDescription: "Full Body Workout",
      workoutImage: "assets/yoga4.png"),
  Workout(
      color: blueColor,
      workoutName: "Weight Gain\nTraining",
      workoutCalories: "250 Cal",
      workoutDuration: "30 min",
      workoutDescription: "Full Body Workout",
      workoutImage: "assets/yoga2.png"),
  Workout(
      color: pinkColor,
      workoutName: "Weight Loss\nTraining",
      workoutCalories: "350 Cal",
      workoutDuration: "40 min",
      workoutDescription: "Full Body Workout",
      workoutImage: "assets/yoga6.png"),
];
