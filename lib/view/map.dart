// ignore_for_file: avoid_unnecessary_containers

import 'dart:async';
import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter_application_44/view/location_helper.dart';
import 'package:flutter_application_44/view/place_dirction.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  static Position? position;
  final Completer<GoogleMapController> _mapController = Completer();

  static final CameraPosition _myCurrentLocationCameraPosition = CameraPosition(
    bearing: 0.0,
    target: LatLng(position!.latitude, position!.longitude),
    tilt: 0.0,
    zoom: 17,
  );

  // static final CameraPosition _kLake = CameraPosition(
  //   bearing: 0.0,
  //   target: LatLng(position!.latitude, position!.longitude),
  //   tilt: 0.0,
  //   zoom: 17,
  // );
  // these variables for getPlaceLocation
  Set<Marker> markers = {};
  // late PlaceSuggestion placeSuggestion;
  // late Place selectedPlace;
  late Marker searchedPlaceMarker;
  late Marker currentLocationMarker;
  late CameraPosition goToSearchedForPlace;

  PlaceDirections? placeDirections;
  var progressIndicator = false;
  late List<LatLng> polylinePoints;
  var isSearchedPlaceMarkerClicked = false;
  var isTimeAndDistanceVisible = false;
  late String time;
  late String distance;

  @override
  initState() {
    super.initState();
    getMyCurrentLocation();
  }

  Future<void> getMyCurrentLocation() async {
    position = await LocationHelper.getCurrentLocation().whenComplete(() {
      setState(() {});
    });
  }

  Widget buildMap() {
    return GoogleMap(
      mapType: MapType.normal, //نوع الخريطه
      myLocationEnabled: true, //نقطه الصغيره للموقعي
      zoomControlsEnabled: true, //ازرار التكبير والتصغير للخريطه
      myLocationButtonEnabled: false, //موقعي
      // markers: markers,
      initialCameraPosition: _myCurrentLocationCameraPosition,
      onMapCreated: (GoogleMapController controller) {
        _mapController.complete(controller);
      },
      polylines: placeDirections != null
          ? {
              Polyline(
                polylineId: const PolylineId('my_polyline'),
                color: Colors.black,
                width: 2,
                points: polylinePoints,
              ),
            }
          : {},
    );
  }

  Future<void> _goTomyCurrentLocation() async {
    final GoogleMapController controller = await _mapController.future;
    await controller.animateCamera(
        CameraUpdate.newCameraPosition(_myCurrentLocationCameraPosition));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(fit: StackFit.expand, children: [
          position != null
              ? buildMap()
              : Center(
                  child: Container(
                    child: const CircularProgressIndicator(
                      color: MyColors.Green,
                    ),
                  ),
                ),
        ]),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _goTomyCurrentLocation,
          label: const Text('To lake!'),
          icon: const Icon(Icons.directions_boat),
        ),
      ),
    );
  }
}
