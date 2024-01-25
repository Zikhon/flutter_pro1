import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart' as loc;
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math' show cos, sqrt, asin;

class MapScreen extends StatefulWidget {
final double lat;
final double lng;
MapScreen(this.lat, this.lng);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController?> _controller = Completer();
  Map<PolylineId,Polyline> polylines={};
  PolylinePoints polylinePoints = PolylinePoints();
  Location location =Location();
  Marker? sourcePosition, destinationPosition;
  loc.LocationData? _currentPosition;
  LatLng curLocation = LatLng(-33.876115, 18.5008116);
  StreamSubscription<loc.LocationData>? locationSubscription;

@override


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}