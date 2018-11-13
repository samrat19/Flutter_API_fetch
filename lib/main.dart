import 'package:flutter/material.dart';
import 'package:flutter_app_json_local/second.dart';
import 'package:flutter_app_json_local/third.dart';
import 'package:flutter_app_json_local/fouth.dart';
import 'package:flutter_app_json_local/fifth.dart';
import 'package:flutter_app_json_local/sixth.dart';

void main() => runApp(new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new MyPage(),
    ));

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage>  with SingleTickerProviderStateMixin{


  TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: TabBarView(
          controller: tabController,
          children: <Widget>[
            HomePage(),
            Ortho(),
            Eye(),
            Brain(),
            Skin()
          ]
      ),
    );
  }
}