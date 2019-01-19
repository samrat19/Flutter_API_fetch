import 'package:flutter/material.dart';

import 'package:flutter_app_json_local/patient_form.dart';
import 'package:flutter_app_json_local/datechoose.dart';
import 'package:flutter_app_json_local/customWidgets/doctorDetails.dart';

class DetailsPart extends StatefulWidget {
  final String title;
  final String desig;
  final String degree;
  final String dept;
  final String expo;
  final String timing;

  DetailsPart(this.title, this.desig, this.degree, this.dept, this.expo,this.timing);

  @override
  _DetailsPartState createState() => _DetailsPartState(
      this.title, this.desig, this.degree, this.dept, this.expo,this.timing);
}

class _DetailsPartState extends State<DetailsPart> {
  final String title;
  final String desig;
  final String degree;
  final String dept;
  final String expo;
  final String timing;

  _DetailsPartState(this.title, this.desig, this.degree, this.dept, this.expo,this.timing);

  void Patiententry() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new DateChoose(this.timing,this.title)));
    });
  }

  @override
  Widget build(BuildContext context) {

    List _details = [
      title,
      desig,
      degree,
      dept,
      expo,
      timing
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Details"),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white70,
      body: Material(
        child: ListView(
          children: <Widget>[
            CustomDoctorDetails(_details),
            _appoinmentButton(),
          ],
        ),
      ),
    );
  }

  Widget _appoinmentButton() => Padding(
    padding: const EdgeInsets.all(40.0),
    child: RaisedButton(
      padding: EdgeInsets.all(10.0),
      color: Colors.redAccent,
      splashColor: Colors.pinkAccent,
      elevation: 10.0,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        "Take Appoinment",
        style: TextStyle(color: Colors.white, fontSize: 24.0),
      ),
      onPressed: Patiententry,
    ),
  );
}
