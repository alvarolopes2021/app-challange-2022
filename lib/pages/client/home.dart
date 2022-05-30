import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:ispfinder/models/installer.model.dart';
import 'package:ispfinder/services/installerServices.dart';
import 'package:ispfinder/services/mapServices.dart';
import 'package:ispfinder/services/utils.dart';
import "package:latlong2/latlong.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    UtilServices.enableGeoLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: FutureBuilder(
        future: UtilServices.getPosition(), //gets user location
        builder: (context, snapshot) {
          if (snapshot.hasData) {  //after trying to get user location
            return FutureBuilder(
              future: InstallerServices.getInstallers(), //get all installers
              builder: (installerContext, installerSnapshot) {
                if (installerSnapshot.hasData) {

                  return FlutterMap(
                    options: MapOptions(
                      center: snapshot.data as LatLng,
                      zoom: 8.0,
                    ),
                    layers: [
                      TileLayerOptions(
                          urlTemplate:
                              "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c']),
                      MarkerLayerOptions(
                        markers: MapServices.generateMarkers(installerSnapshot.data as List<InstallerModel>),
                      ),
                    ],
                  );
                }
                return const CircularProgressIndicator(
                  color: Colors.lightGreen,
                );
              },
            );
          }

          return const CircularProgressIndicator(
            color: Colors.lightGreen,
          );
        },
      )),
    );
  }
}
