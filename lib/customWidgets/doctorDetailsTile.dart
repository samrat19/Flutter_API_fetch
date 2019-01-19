import 'package:flutter/material.dart';

class CustomDoctorDetails extends StatelessWidget {
  static const _fontSize = 20.0;
  final List _details;

  CustomDoctorDetails(this._details);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        gradient: LinearGradient(
          colors: [Colors.red, Colors.pink],
        ),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        children: <Widget>[
          customListTile("Name", _details[0]),
          customListTile("Designation", _details[1]),
          customListTile("Qualification", _details[2]),
          customListTile("Department", _details[3]),
          customListTile("Experience", _details[4]),
        ],
      ),
    );
  }

  Widget customListTile(String title, String details) {
    return ListTile(
      leading: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: _fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
      title: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: _fontSize,
            color: Colors.white
        ),
      ),
    );
  }
}
