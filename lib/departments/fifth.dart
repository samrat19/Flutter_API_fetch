import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_app_json_local/doctorDetails.dart';
import 'package:flutter_app_json_local/customWidgets/drawer.dart';
import 'package:flutter_app_json_local/customWidgets/doctorsList.dart';

class Darma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body : Skin(),
    );
  }
}

class Skin extends StatefulWidget {
  @override
  _SkinState createState() => _SkinState();
}

class _SkinState extends State<Skin> {

  int currentTab = 0;

  final String url = "https://www.jasonbase.com/things/4jRK.json";
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

//    print(response.body);

    setState(() {
      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['results'];
      isdataloaed = true;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: isdataloaed ? ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: CustomDoctorTile(data[index]['name']),
            onTap: () {
              String name = data[index]['name'];
              String desig = data[index]['Designation'];
              String degree = data[index]['Degree'];
              String dept = data[index]['Dept'];
              String expo = data[index]['expo'];
              String date = data[index]['date'];
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      DetailsPart(name, desig, degree, dept, expo,date)
              )
              );
            },
          );
        },
      ) : Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.red,
          strokeWidth: 6.0,
        ),
      ),
    );
  }
}
