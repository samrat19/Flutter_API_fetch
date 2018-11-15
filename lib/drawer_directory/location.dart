import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(this.dept),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
