import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final String producer;

  DetailsPage(this.title, this.producer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Text(
          "Director : $producer",
          style: TextStyle(color: Colors.green, fontSize: 40.0),
        ),
      ),
    );
  }
}
