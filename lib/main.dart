import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_app_json_local/doctor_details.dart';

void main() => runApp(new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentTab = 0;

  final String url = "https://www.jasonbase.com/things/ZkBE.json";
  List data;

  @override
  void initState() {
    // TODO: implement initState
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
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Doctor List"),
      ),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: new Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Card(
                    child: new Container(
                      child: new Text(
                        data[index]['name'],
                        style: TextStyle(color: Colors.blue, fontSize: 25.0),
                      ),
                      padding: EdgeInsets.all(20.0),
                    ),
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
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      DetailsPart(name, desig, degree, dept, expo)));
            },
          );
        },
      ),
    );
  }
}
