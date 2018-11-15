import 'package:flutter/material.dart';

class About extends StatefulWidget {

  final String dept;

  About(this.dept);

  @override
  _AboutState createState() => _AboutState(this.dept);
}

class _AboutState extends State<About> {

  final String dept;
  _AboutState(this.dept);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.dept),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
