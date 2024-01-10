import 'dart:async';
import 'package:araba_sevdasi/pages/anasayfa/animation_fuel_box.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final Set<Marker> _markers = {};
  List<LatLng> markerLocations = [];
  Map<PolylineId, Polyline> polylines = {};

  static const CameraPosition _edirneMerkez = CameraPosition(
    target: LatLng(41.6771, 26.5557),
    zoom: 14.4746,
  );

  String infoText = 'Choose the start point';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Google Maps",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.yellow,
        foregroundColor: Theme.of(context).colorScheme.background,
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _edirneMerkez,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        onTap: _addMarker,
        markers: _markers,
        polylines: Set<Polyline>.of(polylines.values),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 80),
        child: FloatingActionButton.extended(
          onPressed: () {
            if (markerLocations.length == 2) {
              _calculateDistance(markerLocations[0], markerLocations[1]).then(
                (value) => pushTheAnimationPage(context),
              );
            }
          },
          label: Text(infoText),
          icon: const Icon(Icons.car_crash_rounded),
        ),
      ),
    );
  }

  void _addMarker(LatLng pos) {
    if (_markers.length >= 2) {
      return;
    }

    setState(() {
      if (_markers.isEmpty) {
        _markers.add(Marker(
          markerId: const MarkerId('origin'),
          position: pos,
        ));
        markerLocations.add(pos);
      } else if (_markers.length == 1) {
        _markers.add(Marker(
          markerId: const MarkerId('dest'),
          position: pos,
        ));
        markerLocations.add(pos);
      }

      if (markerLocations.length == 1) {
        infoText = 'Choose the end point';
      } else if (markerLocations.length == 2) {
        infoText = 'Calculate the distance';
      }
    });
  }

  // Distance Calculate Method
  Future<void> _calculateDistance(LatLng pos1, LatLng pos2) async {
    double distanceInMeters = Geolocator.distanceBetween(
      pos1.latitude,
      pos1.longitude,
      pos2.latitude,
      pos2.longitude,
    );
    infoText = distanceInMeters.toStringAsFixed(2);
  }

  void pushTheAnimationPage(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => AnimationCalculate(distance: infoText)));
  }
}
