import 'package:flutter/material.dart';

class CustomDepartment extends StatelessWidget {

  final String _title;
  final String _details;

  CustomDepartment(this._title, this._details);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.red,
        gradient: LinearGradient(
          colors: [Colors.red, Colors.pink],
        ),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        children: <Widget>[
          Text(
            _title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Divider(height: 16.0,),
          Text(
            _details,
            softWrap: true,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
