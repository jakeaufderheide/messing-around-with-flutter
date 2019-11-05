import 'package:flutter/material.dart';
import 'package:myapp/screens/location_detail/image_banner.dart';
import 'package:myapp/style.dart';

class LocationSelectionItem extends StatelessWidget {
  final String _title;
  final String _imagePath;
  static const double _horizPadding = 16.0;

  LocationSelectionItem(this._title, this._imagePath);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ImageBanner(_imagePath, 200.0),
        Positioned(
          top: 5.0,
          right: 5.0,
          left: 5.0,
          bottom: 5.0,
          child: Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color> [
                  Colors.black.withAlpha(0),
                  Colors.black12,
                  Colors.black45
                ]
              )),
            alignment: Alignment.bottomLeft,
            child: Text(_title,
              style: AppBarTextStyle,
              textAlign: TextAlign.left,
              ),
        ))
      ],
    );
    
  }
}