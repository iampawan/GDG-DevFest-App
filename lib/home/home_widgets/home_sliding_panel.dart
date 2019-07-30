import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_devfest/config/index.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeSlidingPanel extends StatefulWidget {
  @override
  _HomeSlidingPanelState createState() => _HomeSlidingPanelState();
}

class _HomeSlidingPanelState extends State<HomeSlidingPanel> {
  GoogleMapController _controller;
  bool isMapCreated = false;

  @override
  void initState() {
    super.initState();
  }

  void _setMapStyle(String mapStyle) {
    setState(() {
      _controller.setMapStyle(mapStyle);
    });
  }

  Future<String> _getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  Set<Marker> _createMarker() {
    return <Marker>[
      Marker(
          markerId: MarkerId("marker_1"),
          position: LatLng(37.42796133580664, -122.085749655962),
          icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueOrange,
          )),
    ].toSet();
  }

  // static final CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 14.151926040649414);

  changeMapMode() {
    if (ConfigBloc().darkModeOn) {
      _getFileData('assets/nightmode.json').then(_setMapStyle);
    } else {
      _getFileData('assets/daymode.json').then(_setMapStyle);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isMapCreated) {
      changeMapMode();
    }
    return Padding(
      padding: const EdgeInsets.only(top: 1.0),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            zoomGesturesEnabled: false,
            myLocationEnabled: true,
            markers: _createMarker(),
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
              isMapCreated = true;
              changeMapMode();
              setState(() {});
            },
          ),
          IgnorePointer(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Google Office\n",
                      style: Theme.of(context).textTheme.title.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      children: [
                        TextSpan(
                            text: "Shoreline Amphitheatre, Mountain View, CA",
                            style: Theme.of(context).textTheme.subtitle,
                            children: []),
                      ]),
                )),
          )
        ],
      ),
    );
  }
}
