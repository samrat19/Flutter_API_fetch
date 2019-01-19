import 'package:flutter/material.dart';

class CustomAbout extends StatelessWidget {

  final String _name;
  final String _id;
  final String _imageAssetName;

  const CustomAbout(this._name, this._id, this._imageAssetName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 5.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          colors: [Colors.red, Colors.pink],
        ),
        color: Colors.redAccent,
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              _name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            leading: CircleAvatar(
              child: _getImageAsset(),
            ),
            subtitle: Text(
              "Id: $_id",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getImageAsset() {
    AssetImage assetImage = AssetImage(_imageAssetName);
    Image image = Image(image: assetImage, width: 100, height: 100,);

    return Container(child: image,);
  }
}
