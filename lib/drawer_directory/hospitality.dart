import 'package:flutter/material.dart';

class Hospitality extends StatefulWidget {

  final String dept;

  Hospitality(this.dept);

  @override
  _HospitalityState createState() => _HospitalityState(this.dept);
}

class _HospitalityState extends State<Hospitality> {

  final String dept;
  _HospitalityState(this.dept);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.dept),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
