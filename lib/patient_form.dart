import 'package:flutter/material.dart';

class PatientDetail extends StatefulWidget {
  final String d_name;

  PatientDetail(this.d_name);

  @override
  _PatientDetailState createState() => _PatientDetailState(this.d_name);
}

class _PatientDetailState extends State<PatientDetail> {
  final String d_name;

  _PatientDetailState(this.d_name);

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();
  final TextEditingController t3 =  TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    t1.dispose();
    t2.dispose();
    t3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Patient Detail"),
      ),
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        Text(
          "Doctor : $d_name",
          style: TextStyle(color: Colors.teal, fontSize: 25.0),
        ),
        new Theme(
          data: new ThemeData(
              brightness: Brightness.light,
              inputDecorationTheme: new InputDecorationTheme(
                // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                labelStyle:
                    new TextStyle(color: Colors.red, fontSize: 25.0),
              )),
          isMaterialAppTheme: true,
          child: new ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.all(20.0),
                child: new Form(
                  autovalidate: true,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Divider(),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Name",
                          hintText: "Johney Depp"
                        ),
                        obscureText: false,
                        controller: t1,
                        keyboardType: TextInputType.text,
                      ),
                      new Divider(),
                      new Divider(),
                      new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "Enter Syntoms",
                            hintText: "Abdomen pain"
                        ),
                        obscureText: false,
                        controller: t2,
                        keyboardType: TextInputType.text,
                      ),
                      new Divider(),
                      new Divider(),
                      new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "When you will Visit",
                            hintText: "choose Monday or Wednesday or Friday"
                        ),
                        obscureText: false,
                        controller: t3,
                        keyboardType: TextInputType.text,
                      ),
                      new Divider(),
                      new Divider(),
                      new Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                      ),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 150.0,
                        color: Colors.green,
                        splashColor: Colors.teal,
                        textColor: Colors.white,
                        child: Text("Submit"),
                        onPressed: (){
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text("Dear "+namecheck(t1.text)+","
                                    +" your Appointment is fixed with doctor $d_name on "+daycheck(t3.text)+","
                                    + " for your "+synCheck(t2.text),
                                  style: TextStyle(color: Colors.black,fontSize: 20.0),),
                              );
                            },
                          );
                        },
                        //onPressed: Patiententry1,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

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
}
