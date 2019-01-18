import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_app_json_local/doctor_details.dart';
import 'package:flutter_app_json_local/customWidgets/drawer.dart';


class Ortho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orthopedic"),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      body : Orthopedic(),
    );
  }
}

class Orthopedic extends StatefulWidget {
  @override
  _OrthopedicState createState() => _OrthopedicState();
}

class _OrthopedicState extends State<Orthopedic> {

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
          child: CircularProgressIndicator(backgroundColor: Colors.purple,strokeWidth: 6.0,),
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
