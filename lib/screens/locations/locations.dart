import 'package:flutter/material.dart';
import 'package:myapp/models/location.dart';
import 'package:myapp/main.dart';
import 'location_selection_item.dart';


class Locations extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations.map((location) => GestureDetector(
          child: LocationSelectionItem(location.name, location.imagePath),
          onTap: () => _onLocationTap(context, location.id),
        )).toList()
      )
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id' : locationID });
  }
}