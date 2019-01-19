import 'package:flutter/material.dart';

class CustomDoctorTile extends StatelessWidget {

  final String _name;

  CustomDoctorTile(this._name);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.red[700],
        borderRadius: BorderRadius.circular(10.0),
        gradient: new LinearGradient(
          colors: [Colors.red, Colors.pink],
        ),
      ),
      child: Center(
        child: Text(
          _name,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 25.0
          ),
        ),
      ),
    );
  }
}
