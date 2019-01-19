import 'package:flutter/material.dart';

import 'package:flutter_app_json_local/customWidgets/drawer.dart';
import 'package:flutter_app_json_local/departments/first.dart';
import 'package:flutter_app_json_local/departments/second.dart';
import 'package:flutter_app_json_local/departments/third.dart';
import 'package:flutter_app_json_local/departments/fourth.dart';
import 'package:flutter_app_json_local/departments/fifth.dart';

void main() => runApp(new MaterialApp(
  title: "Heath Care",
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
  int _currentPage = 0;
  final _pages = [
    Cardio(),
    Ortho(),
    Optha(),
    Nuro(),
    Darma()
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Health Care"),
        ),
        backgroundColor: Colors.red[50],
        drawer: Drawer(
          child: CustomDrawer(),
        ),
        body: _pages[_currentPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPage,
          onTap: (int index) {
            setState(() {
              _currentPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.red,),
              title: Text("Cardiology" , style: TextStyle(color: Colors.red))
            ),BottomNavigationBarItem(
                icon: Icon(Icons.accessible_forward, color: Colors.red,),
                title: Text("Orthopedic", style: TextStyle(color: Colors.red))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.remove_red_eye, color: Colors.red,),
                title: Text("Opthalmology", style: TextStyle(color: Colors.red))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.face,  color: Colors.red,),
                title: Text("Nurology", style: TextStyle(color: Colors.red))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.content_cut, color: Colors.red,),
                title: Text("Darmatology", style: TextStyle(color: Colors.red))
            ),
          ],
        ),
//        body: TabBarView(
//          controller: tabController,
//          children: <Widget>[
//            Cardio(),
//            Ortho(),
//            Optha(),
//            Nuro(),
//            Darma()
//          ]
//        ),
      ),
    );
  }
}
