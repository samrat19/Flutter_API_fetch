import 'package:flutter/material.dart';

class CustomPartner extends StatelessWidget {

  final String _title;
  final String _subTitle;
  final IconData _icon;

  CustomPartner(this._title, this._subTitle, this._icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.red,
          gradient: LinearGradient(
            colors: [Colors.red, Colors.pink],
          ),
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: ListTile(
        leading: Icon(
          _icon,
          color: Colors.white,
        ),
        title: Text(
          _title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
        subtitle: Text(
          _subTitle,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16.0
          ),
        ),
      ),
    );
  }
}
