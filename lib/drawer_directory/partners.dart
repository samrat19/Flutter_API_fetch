import 'package:flutter/material.dart';

import 'package:flutter_app_json_local/customWidgets/partner.dart';

class Branches extends StatefulWidget {

  final String dept;

  Branches(this.dept);

  @override
  _BranchesState createState() => _BranchesState(this.dept);
}

class _BranchesState extends State<Branches> {

  final String dept;
  _BranchesState(this.dept);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.dept),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red[50],
      body: ListView(
        children: <Widget>[
          CustomPartner("Techno India University"),
          CustomPartner("Coco Cola"),
          CustomPartner("Royal Stag"),
          CustomPartner("Jonny Walker"),
        ],
      ),
    );
  }
}
