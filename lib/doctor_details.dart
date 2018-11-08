import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;

  DetailsPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
