import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_app_json_local/patientForm.dart';
import 'package:flutter_app_json_local/customWidgets/dateTile.dart';

class DateChoose extends StatelessWidget {

  final String doc_date;
  final String doc_name;
  DateChoose(this.doc_date,this.doc_name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Date"),
      ),
      body: DateList(this.doc_date,this.doc_name),
      backgroundColor: Colors.red[50],
    );
  }
}

class DateList extends StatefulWidget {

  final String doc_date;
  final String doc_name;
  DateList(this.doc_date,this.doc_name);

  @override
  _DateListState createState() => _DateListState(this.doc_date,this.doc_name);
}
class _DateListState extends State<DateList> {

  final String doc_date;
  final String doc_name;
  _DateListState(this.doc_date,this.doc_name);

  final String url = "";
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
        Uri.encodeFull(doc_date),
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
    return isdataloaed ? ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: CustomDateTile(data[index]['avl']),
          onTap: () {
            String date = data[index]['avl'];
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    PatientDetail(doc_name, date)));
          },
        );
      },
    ) : Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.pink,
        strokeWidth: 6.0,
      ),
    );
  }
}

