// ignore: unused_import
import 'dart:io';

import 'package:figmaapp/screens/API_screen.dart';
import 'package:figmaapp/screens/editprofil_screen.dart';
import 'package:figmaapp/screens/historyscreen.dart';
import 'package:figmaapp/screens/login_screen.dart';
import 'package:figmaapp/screens/mathscreen.dart';
import 'package:figmaapp/screens/profile_screen.dart';
//import 'package:figmaapp/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginWidget(),
      routes: {
        '/editprofil-screen': (context) => EditProfileScreen(),
        '/profil-screen': (context) => ProfileScreen(),
        '/history-screen': (context) => HistoryScreen(),
        '/API-screen': (context) => ApiScreen(),
        '/Math-screen': (context) => MathScreen(),
      },
    );
  }
}
