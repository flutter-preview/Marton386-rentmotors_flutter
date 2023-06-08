import 'dart:io';
import 'my_apple_map.dart';
import 'my_google_map.dart';
import 'my_open_street_map.dart';
import '../../../res/global.dart';
import 'package:flutter/material.dart';
import '../../models/responses/presentation_station.dart';
import 'package:flutter_map/flutter_map.dart' as open_street;
import 'package:apple_maps_flutter/apple_maps_flutter.dart' as apple;
import 'package:google_api_availability/google_api_availability.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as google;

class MyMapWidget extends StatefulWidget {
  const MyMapWidget({
    Key? key,
    required this.lat,
    required this.lng,
    required this.zoom,
    required this.onPress,
    required this.stationsList,
    required this.onAppleCameraMove,
    required this.onGoogleCameraMove,
    required this.onOpenStreetCameraMove,
  }) : super(key: key);
  final double lat;
  final double lng;
  final double zoom;
  final ValueChanged<int> onPress;
  final List<PresentationStation> stationsList;
  final ValueChanged<apple.CameraPosition> onAppleCameraMove;
  final ValueChanged<google.CameraPosition> onGoogleCameraMove;
  final ValueChanged<open_street.MapPosition> onOpenStreetCameraMove;

  @override
  State<MyMapWidget> createState() => _MyMapWidgetState();
}

class _MyMapWidgetState extends State<MyMapWidget> {
  bool? isGooglePlayServicesAvailable;

  @override
  void initState() {
    super.initState();
    checkGooglePlayServicesAvailability();
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ?
    MyAppleMap(
      lat: widget.lat,
      lng: widget.lng,
      zoom: widget.zoom,
      onPress: (int id) {
        widget.onPress(id);
      },
      stationsList: widget.stationsList,
      onCameraMove: (apple.CameraPosition position) {
        widget.onAppleCameraMove(position);
      },
    ) : buildMapWidget();
  }

  Widget buildMapWidget() {
    if (isGooglePlayServicesAvailable == null) {
      return const Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Global.darkGreen,
        ),
      );
    } else if (isGooglePlayServicesAvailable!) {
      return MyGoogleMap(
        lat: widget.lat,
        lng: widget.lng,
        zoom: widget.zoom,
        onPress: (int id) {
          widget.onPress(id);
        },
        stationsList: widget.stationsList,
        onCameraMove: (google.CameraPosition position) {
          widget.onGoogleCameraMove(position);
        },
      );
    } else {
      return MyOpenStreetMap(
        lat: widget.lat,
        lng: widget.lng,
        zoom: widget.zoom,
        onPress: (int id) {
          widget.onPress(id);
        },
        stationsList: widget.stationsList,
        onPositionChanged: (open_street.MapPosition position) {
          widget.onOpenStreetCameraMove(position);
        },
      );
    }
  }

  Future<void> checkGooglePlayServicesAvailability() async {
    GooglePlayServicesAvailability availability =
    await GoogleApiAvailability.instance.checkGooglePlayServicesAvailability();
    setState(() {
      isGooglePlayServicesAvailable = availability == GooglePlayServicesAvailability.success;
    });
  }
}