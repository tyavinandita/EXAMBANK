import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Constants {
  static const Color primaryColor = Colors.blue;
  static const Color scaffoldBackgroundColor = Color.fromRGBO(245, 247, 249, 1);
  static const Color activeMenu = Color(0xFFC8C9CB);
}

class AppTextStyles {
  static TextStyle title = const TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
      color: Color(0xFFC8C9CB));
  static TextStyle body = const TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
      fontSize: 16.0,
      color: Color(0xFFC8C9CB));
}
