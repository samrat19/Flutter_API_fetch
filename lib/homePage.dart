import 'package:flutter/material.dart';

import 'package:flutter_app_json_local/customWidgets/drawer.dart';
import 'package:flutter_app_json_local/departments/first.dart';
import 'package:flutter_app_json_local/departments/second.dart';
import 'package:flutter_app_json_local/departments/third.dart';
import 'package:flutter_app_json_local/departments/fourth.dart';
import 'package:flutter_app_json_local/departments/fifth.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  TabController tabController;
  int _currentPage = 0;
  final _pages = [
    Ortho(),
    Cardio(),
    Optha(),
    Nuro(),
    Darma()
  ];

  Future<bool> _Onbackpressed(){
    return showDialog(
        context: context,
      builder: (Context)=>AlertDialog(
        title:Text("Do you want to close the App?",style: TextStyle(color:Colors.red,fontSize: 20.0),),
        actions: <Widget>[
          FlatButton(
            onPressed: ()=> Navigator.pop(context,true),
            child: Text("Yes",style: TextStyle(color: Colors.redAccent,fontSize: 16.0,fontWeight: FontWeight.bold),),
          ),
          FlatButton(
              onPressed: ()=> Navigator.pop(context,false),
              child: Text("No",style: TextStyle(color: Colors.redAccent,fontSize: 16.0),),
          ),
        ],
      )
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Health Care"),
          ),
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
        ),
      ), onWillPop: _Onbackpressed,
    );
  }
}