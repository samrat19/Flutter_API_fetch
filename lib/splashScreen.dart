import 'package:flutter/material.dart';

import 'package:flutter_app_json_local/homePage.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => MyPage()
        )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.redAccent,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 150),
              child: CircleAvatar(
                backgroundColor: Colors.red[50],
                radius: 75,
                child: _getImageAsset(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            child: Center(
              child: Text(
                "Health Care",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  strokeWidth: 3.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getImageAsset() {
    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(image: assetImage);

    return Container(child: image,);
  }
}
