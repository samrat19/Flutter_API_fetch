import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Location extends StatefulWidget {

  final String dept;

  Location(this.dept);

  @override
  _LocationState createState() => _LocationState(this.dept);
}

class _LocationState extends State<Location> {

  final String dept;
  _LocationState(this.dept);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(this.dept),
        backgroundColor: Colors.red,
      ),
      url: "https://www.google.com/maps/place/Apollo+Gleneagles+Hospitals/@22.5748302,88.4014062,15z/data=!4m5!3m4!1s0x0:0x8b1403320baa41d4!8m2!3d22.5748302!4d88.4014062",
    );
  }
}
