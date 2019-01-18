import 'package:flutter/material.dart';
import 'package:flutter_app_json_local/departments/first.dart';
import 'package:flutter_app_json_local/departments/second.dart';
import 'package:flutter_app_json_local/departments/third.dart';
import 'package:flutter_app_json_local/departments/fourth.dart';
import 'package:flutter_app_json_local/departments/fifth.dart';

void main() => runApp(new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent
      ),
      home: new MyPage(),
      debugShowCheckedModeBanner: false,
    ));

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBarView(
        controller: tabController,
        children: <Widget>[
          Cardio(),
          Ortho(),
          Optha(),
          Nuro(),
          Darma()
        ]
      ),
    );
  }
}
