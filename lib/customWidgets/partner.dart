import 'package:flutter/material.dart';

class CustomPartner extends StatelessWidget {

  final String _name;

  CustomPartner(this._name);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(
          Icons.account_circle,
        ),
      ),
      title: Text(
        _name,
        style: TextStyle(
          color: Colors.redAccent,
          fontSize: 24.0,
        ),
      ),
    );
  }
}
