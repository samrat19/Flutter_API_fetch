import 'package:flutter/material.dart';

import 'package:flutter_app_json_local/splashScreen.dart';

import 'package:flutter_app_json_local/departments/second.dart';
import 'package:flutter_app_json_local/homePage.dart';

void main() => runApp(new MaterialApp(
  title: "Heath Care",
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(
    primaryColor: Colors.red,
    primaryColorDark: Colors.red[700],
    accentColor: Colors.redAccent
  ),
  home: SplashScreen(),
));
