import 'package:flutter/material.dart';

class Hospitality extends StatefulWidget {

  final String dept;

  Hospitality(this.dept);

  @override
  _HospitalityState createState() => _HospitalityState(this.dept);
}

class _HospitalityState extends State<Hospitality> {

  final String dept;
  _HospitalityState(this.dept);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.dept),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red[50],
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          Text(
            "This quality of patient care is possible in Apollo Hospitals because of an engaged workforce that takes pride in its day-to-day responsibilities. They are able to alleviate feelings of stress and fear in patients while instilling in them a positive approach towards treatment. Through small acts of kindness, they create a superior patient experience that few others are able to match.",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.redAccent
            ),
          ),
          SizedBox(height: 10.0,),

          // Heading 1
          _heading("Guest Relations"),
          _bulletPoint("Addopted the engagement pathway for Voice of Customemer (VOC)"),
          _bulletPoint("Inhouse framework captures VOC from interaction and convertes them into qualitative and quantitative feedback for quick follow-up action"),
          Divider(),

          // Heading 2
          _heading("Tender Loving Care"),
          _bulletPoint("Core training module for all nurses"),
          _bulletPoint("Inspire the conversion of daily interactions into memorable experiences, resulting in enhanced courtesy index for nursing"),
          _bulletPoint("Tender Loving Care (TLC) - training care for frontline stuffs"),
          Divider(),
          
          // Heading 3
          _heading("Addimission"),
          _bulletPoint("Minimises waiting time for planned admissions"),
          _bulletPoint("Dedicated rooming experience that orients patients and attendees to various hospital services"),
          Divider(),

          // Heading 4
          _heading("Discharge"),
          _bulletPoint("Post-discharge calls to patients for suggestions and feedback 72 hours after discharge"),
          _bulletPoint("Speedy discharge summary for planned discharges"),
        ],
      ),
    );
  }

  Widget _heading(String string) {
    return Text(
      string,
      style: TextStyle(
        color: Colors.red[900],
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    );
  }

  Widget _bulletPoint(String string) {
    return ListTile(
      contentPadding: EdgeInsets.only(right: 10.0),
      leading: Icon(
        Icons.arrow_right
      ),
      title: Text(
        string,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.redAccent[400],
        ),
      ),
    );
  }
}
