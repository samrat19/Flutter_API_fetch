import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_app_json_local/doctor_details.dart';

import 'package:flutter_app_json_local/drawer_directory/dept.dart';
import 'package:flutter_app_json_local/drawer_directory/about.dart';
import 'package:flutter_app_json_local/drawer_directory/branches.dart';
import 'package:flutter_app_json_local/drawer_directory/hod.dart';
import 'package:flutter_app_json_local/drawer_directory/hospitality.dart';
import 'package:flutter_app_json_local/drawer_directory/location.dart';


class Fifth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brain"),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Visit Our Site",style: TextStyle(fontSize: 20.0,color: Colors.white),),
            ),
            ListTile(
              title: Text("Our departments",style: TextStyle(fontSize: 20.0,color:Colors.red),),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Department("Departments")));
              },
            ),
            ListTile(
              title: Text("Visit Our Site",style: TextStyle(fontSize: 20.0,color: Colors.white),),
            ),
            ListTile(
              title: Text("Our Hospitality",style: TextStyle(fontSize: 20.0,color: Colors.deepPurpleAccent),),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Hospitality("Happy to Serve You")));
              },
            ),
            ListTile(
              title: Text("Visit Our Site",style: TextStyle(fontSize: 20.0,color: Colors.white),),
            ),
            ListTile(
              title: Text("Our HODs",style: TextStyle(fontSize: 20.0,color: Colors.teal),),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Hod("You Can Trust")));
              },
            ),
            ListTile(
              title: Text("Visit Our Site",style: TextStyle(fontSize: 20.0,color: Colors.white),),
            ),
            ListTile(
              title: Text("Our Location",style: TextStyle(fontSize: 20.0,color: Colors.cyan),),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Location("Here We are")));
              },
            ),
            ListTile(
              title: Text("Visit Our Site",style: TextStyle(fontSize: 20.0,color: Colors.white),),
            ),
            ListTile(
              title: Text("Our Franchise",style: TextStyle(fontSize: 20.0,color: Colors.amber),),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Branches("Our Partners")));
              },
            ),
            ListTile(
              title: Text("Visit Our Site",style: TextStyle(fontSize: 20.0,color: Colors.white),),
            ),
            ListTile(
              title: Text("About Us",style: TextStyle(fontSize: 20.0,color: Colors.deepOrange),),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new About("About US")));
              },
            )
          ],),
      ),
      body : Brain(),
    );
  }
}

class Brain extends StatefulWidget {
  @override
  _BrainState createState() => _BrainState();
}

class _BrainState extends State<Brain> {

  int currentTab = 0;

  final String url = "https://www.jasonbase.com/things/ZkBE.json";
  List data;
  bool isdataloaed = false;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http.get(

        //encoding url
        Uri.encodeFull(url),
        headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['results'];
      isdataloaed = true;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    if(isdataloaed == false){
      return Scaffold(
        backgroundColor: Colors.white,
        body: new Center(
          child: CircularProgressIndicator(backgroundColor: Colors.teal,strokeWidth: 6.0,),
        ),
      );
    }else{
      return new Scaffold(
        body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.person),
                        ),
                        new Card(
                          child: new Container(
                            child: new Text(
                              data[index]['name'],
                              style: TextStyle(color: Colors.black, fontSize: 25.0),
                            ),
                            padding: EdgeInsets.all(20.0),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              onTap: () {
                String name = data[index]['name'];
                String desig = data[index]['Designation'];
                String degree = data[index]['Degree'];
                String dept = data[index]['Dept'];
                String expo = data[index]['expo'];
                String date = data[index]['date'];
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        DetailsPart(name, desig, degree, dept, expo,date)));
              },
            );
          },
        ),
      );
    }
  }
}
