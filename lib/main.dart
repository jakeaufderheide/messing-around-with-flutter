// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:myapp/screens/location_detail/location_detail.dart';
import 'package:myapp/screens/locations/locations.dart';
import 'package:myapp/style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
      home: Locations(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
      primaryColor: Colors.black,
      accentColor: Colors.grey,
      appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle), color: Colors.black),
      textTheme: TextTheme(
        title: TitleTextStyle,
        body1: Body1TextStyle,
      ),
    );
  }
}
