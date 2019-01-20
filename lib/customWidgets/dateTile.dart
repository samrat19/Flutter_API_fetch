import 'package:flutter/material.dart';

class CustomDateTile extends StatelessWidget {
  final String _availableTime;

  CustomDateTile(this._availableTime);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 5.0),
      decoration: BoxDecoration(
        color: Colors.red,
        gradient: LinearGradient(
          colors: [Colors.red, Colors.pink]
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Icon(Icons.access_time, color: Colors.white,),
        title: Text(
          _availableTime,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
