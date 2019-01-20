import 'package:flutter/material.dart';

import 'package:flutter_app_json_local/drawer_directory/departments.dart';
import 'package:flutter_app_json_local/drawer_directory/about.dart';
import 'package:flutter_app_json_local/drawer_directory/partners.dart';
import 'package:flutter_app_json_local/drawer_directory/hod.dart';
import 'package:flutter_app_json_local/drawer_directory/hospitality.dart';
import 'package:flutter_app_json_local/drawer_directory/location.dart';

class CustomDrawer extends StatelessWidget {
  static const _fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              "Departments",
              style: TextStyle(
                fontSize: _fontSize,
                color: Colors.white
              ),
            ),
            leading: Icon(Icons.chevron_right, color: Colors.white),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Department("Departments")));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              "Hospitality",
              style: TextStyle(
                  fontSize: _fontSize,
                  color: Colors.white
              ),
            ),
            leading: Icon(Icons.chevron_right, color: Colors.white,),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Hospitality("Hospitality")));
            },
          ),
          Divider(),
          // TODO: Man I don't want to add HODs
//          ListTile(
//            title: Text(
//              "HODs",
//              style: TextStyle(
//                  fontSize: _fontSize,
//                  color: Colors.white
//              ),
//            ),
//            leading: Icon(Icons.chevron_right, color: Colors.white,),
//            onTap: () {
//              Navigator.of(context).pop();
//              Navigator.of(context).push(new MaterialPageRoute(
//                  builder: (BuildContext context) => new Hod("Head of the Departements")));
//            },
//          ),
//          Divider();
          ListTile(
            title: Text(
              "Location",
              style: TextStyle(
                  fontSize: _fontSize,
                  color: Colors.white
              ),
            ),
            leading: Icon(Icons.chevron_right, color: Colors.white,),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Location("Location")));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              "Parters",
              style: TextStyle(
                  fontSize: _fontSize,
                  color: Colors.white
              ),
            ),
            leading: Icon(Icons.chevron_right, color: Colors.white,),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Branches("Partners")));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              "About",
              style: TextStyle(
                  fontSize: _fontSize,
                  color: Colors.white
              ),
            ),
            leading: Icon(Icons.chevron_right, color: Colors.white,),
            onTap: () {
              Navigator.of(context).pop();
              //  Navigator.of(context).pushNamed("/a");
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new About("About US")));
            },
          )
        ],
      ),
    );
  }
}

