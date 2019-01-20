import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';


final FirebaseOptions firebaseOptions = FirebaseOptions(
  googleAppID: '1:998027732340:android:006bb772e6403277',
  apiKey: 'AIzaSyAvjBpihbFFvipVJQxIfnofTjm7dVceLqo',
  databaseURL: 'https://relax-8538b.firebaseio.com',
);

class PatientDetail extends StatefulWidget {
  final String d_name;
  final String doc_date;

  PatientDetail(this.d_name,this.doc_date);

  @override
  _PatientDetailState createState() => _PatientDetailState(this.d_name,this.doc_date);
}

class _PatientDetailState extends State<PatientDetail> {

  List<Item> items = List();
  Item item;
  DatabaseReference databaseReference;

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    item = Item(""," ",  " ",doc_date,d_name);

    databaseReference = FirebaseDatabase.instance.reference().child("Patient_Details");
  }

  void handleSummit(){

    final FormState formState = formkey.currentState;

    if(formState.validate()){
      formState.save();
      formState.reset();
      databaseReference.push().set(item.toJson());
    }
  }

  final String d_name;
  final String doc_date;

  _PatientDetailState(this.d_name,this.doc_date);

  String namecheck(a) {
    if(a != null){
      return a;
    }else{
      return("No Name");
    }
  }

  String daycheck(c) {
    if(c == "Monday" || c == "Wednesday" || c == "Friday"){
      return c;
    }else{
      return ("No Day");
    }
  }

  String synCheck(b){
    if(b != null){
      return b;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Patient Detail"),
      ),
      backgroundColor: Colors.red[50],
      body: ListView(
        children: <Widget>[
          _docTile(d_name),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            padding: EdgeInsets.all(10.0),
            child: Form(
              key: formkey,
              autovalidate: true,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter Name e.g. Atri Das",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                          width: 2.0
                        )
                      ),
                    ),
                    onSaved: (val) => item.title = val,
                    validator: (val) => val == "" ? val : null,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Symptom",
                      hintText: "Enter Symptom e.g. Back Pain",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 2.0
                        )
                      )
                    ),
                    onSaved: (val) => item.body = val,
                    validator: (val) => val == "" ? val : null,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                  Padding(
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
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 24.0),
                      ),
                      onPressed: handleSummit,
                    ),
                  )
                ],
              ),
            ),
          )
        ]
      ),
    );
  }

  Widget _docTile(String name) => Container(
    margin: EdgeInsets.all(20.0),
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.red,
      gradient: LinearGradient(
        colors: [Colors.red, Colors.pink],
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: ListTile(
      leading: Icon(Icons.person_outline, color: Colors.white,),
      title: Text(
        "Dr. $name",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

class Item{

  String key;
  String title;
  String body;
  String day;
  String doctor;

  Item(this.key, this.title, this.body,this.day, this.doctor);

  Item.fromSnapshot(DataSnapshot datasnapshot) :
      key = datasnapshot.key,
      title = datasnapshot.value["title"],
      body = datasnapshot.value["body"],
      day = datasnapshot.value["day"],
      doctor = datasnapshot.value["doctor"];

  toJson(){
    return{
      "patient name" : title,
      "patient syntom" : body,
      "visiting day" : day,
      "doctor name" : doctor ,
    };
  }
}
