import 'package:figmaapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../model/course_model.dart';
import '../model/statistics_model.dart';

final List<Course> course = [
  Course(
      text: "Natural Sciences class 7",
      lessons: "10 exam",
      imageUrl: 'assets/images/Sciencelaboratory.png',
      percent: 50,
      backImage: "assets/box/box1.png",
      color: kDarkBlue),
  Course(
      text: "Social Sciences class 7",
      lessons: "10 exam",
      imageUrl: "assets/images/Schoolsubjectsanditemsforstudying.png",
      percent: 50,
      backImage: "assets/box/box2.png",
      color: kOrange),
  Course(
      text: "Mathematics class 7",
      lessons: "20 exam",
      imageUrl: "assets/images/Calculatorandgraphswithmathematicssigns.png",
      percent: 8,
      backImage: "assets/box/box3.png",
      color: kGreen),
  Course(
      text: "International language class 7",
      lessons: "40 exam",
      imageUrl: "assets/images/Translatorsignontabletwithwebsigntext.png",
      percent: 75,
      backImage: "assets/box/box4.png",
      color: kYellow),
];

final List<Statistics> statistics = [
  Statistics(
    title: "Exam Completed",
    number: "20",
  ),
  Statistics(
    title: "highest score",
    number: "90",
  ),
  Statistics(
    title: "Course In Progress ",
    number: "20",
  ),
  Statistics(
    title: "lowest value",
    number: "35",
  )
];
