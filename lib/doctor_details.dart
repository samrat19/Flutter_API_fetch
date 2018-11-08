import 'package:flutter/material.dart';

class DetailsPart extends StatefulWidget {
  final String title;
  final String desig;
  final String degree;
  final String dept;
  final String expo;

  DetailsPart(this.title, this.desig, this.degree, this.dept, this.expo);

  @override
  _DetailsPartState createState() => _DetailsPartState(
      this.title, this.desig, this.degree, this.dept, this.expo);
}

class _DetailsPartState extends State<DetailsPart> {
  final String title;
  final String desig;
  final String degree;
  final String dept;
  final String expo;

  _DetailsPartState(this.title, this.desig, this.degree, this.dept, this.expo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: ListView(
          children: <Widget>[
            new MaterialButton(
                onPressed: null,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("Name : " , style: TextStyle(color: Colors.black,fontSize: 25.0),),
                  ),
                  Center(
                    child: Text(title,style: TextStyle(color: Colors.red,fontSize: 25.0),),
                  )
                ],
              ),
            ),
            new MaterialButton(
              onPressed: null,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("Designation : " , style: TextStyle(color: Colors.black,fontSize: 25.0),),
                  ),
                  Center(
                    child: Text(desig,style: TextStyle(color: Colors.blue,fontSize: 25.0),),
                  )
                ],
              ),
            ),
            new MaterialButton(
              onPressed: null,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("Qualification : " , style: TextStyle(color: Colors.black,fontSize: 25.0),),
                  ),
                  Center(
                    child: Text(degree,style: TextStyle(color: Colors.teal,fontSize: 25.0),),
                  )
                ],
              ),
            ),
            new MaterialButton(
              onPressed: null,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("Department : " , style: TextStyle(color: Colors.black,fontSize: 25.0),),
                  ),
                  Center(
                    child: Text(dept,style: TextStyle(color: Colors.green,fontSize: 25.0),),
                  )
                ],
              ),
            ),
            new MaterialButton(
              onPressed: null,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("Experience : " , style: TextStyle(color: Colors.black,fontSize: 22.0),),
                  ),
                  Center(
                    child: Text(expo,style: TextStyle(color: Colors.deepPurple,fontSize: 20.0),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Doctor Details"),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
