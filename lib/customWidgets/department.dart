import 'package:flutter/material.dart';

class CustomDepartment extends StatelessWidget {

  final String _title;
  final String _details;

  CustomDepartment(this._title, this._details);

  @override
  Widget build(BuildContext context) {

//    double _height = MediaQuery.of(context).size.height * 0.8;

    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
//      height: _height,
      child: Column(
        children: <Widget>[
          Text(
            _title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 24.0,
            ),
          ),
          Divider(height: 16.0,),
          Text(
            _details,
            softWrap: true,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
