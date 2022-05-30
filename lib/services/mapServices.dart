import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:ispfinder/models/installer.model.dart';
import 'package:latlong2/latlong.dart';

class MapServices {
  static List<Marker> generateMarkers(List<InstallerModel> installers) {
    List<Marker> markers = [];

    for (var element in installers) {
      markers.add(Marker(
        width: 15.0,
        height: 15.0,
        point: LatLng(element.lat, element.lng),
        builder: (ctx) => Container(
          width: 20.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),          
        ),
      ));
    }

    return markers;
  }
}
