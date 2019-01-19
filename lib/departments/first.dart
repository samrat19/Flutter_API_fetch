import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_app_json_local/customWidgets/doctorsList.dart';
import 'package:flutter_app_json_local/doctor_details.dart';
import 'package:flutter_app_json_local/departments/second.dart';


class Cardio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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

      // Uncomment to get the printout the json details
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
      color: Colors.white10,
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
