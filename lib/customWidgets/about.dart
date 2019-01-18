import 'package:flutter/material.dart';

class CustomAbout extends StatelessWidget {

  final String _name;
  final String _id;

  const CustomAbout(this._name, this._id);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.redAccent,
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              _name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            leading: CircleAvatar(
              child: Icon(Icons.account_circle),
            ),
            subtitle: Text(
              "Id: $_id",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}
