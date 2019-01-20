import 'package:flutter/material.dart';

class Hod extends StatefulWidget {

  final String dept;

  Hod(this.dept);

  @override
  _HodState createState() => _HodState(this.dept);
}

class _HodState extends State<Hod> {

  final String dept;
  _HodState(this.dept);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.dept),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red[50],
    );
  }
}
