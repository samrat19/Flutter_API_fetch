import 'package:flutter/material.dart';

class Department extends StatefulWidget {

  final String dept;

  Department(this.dept);

  @override
  _DepartmentState createState() => _DepartmentState(this.dept);
}

class _DepartmentState extends State<Department> {

  final String dept;
  _DepartmentState(this.dept);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.dept),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
