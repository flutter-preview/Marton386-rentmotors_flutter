import 'package:flutter/material.dart';
import '../../models/responses/presentation_station.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as google;

class MyGoogleMap extends StatelessWidget {
  const MyGoogleMap({
    super.key,
    required this.lat,
    required this.lng,
    required this.zoom,
    required this.onPress,
    required this.stationsList,
    required this.onCameraMove,
  });
  final double lat;
  final double lng;
  final double zoom;
  final ValueChanged<int> onPress;
  final List<PresentationStation> stationsList;
  final ValueChanged<google.CameraPosition> onCameraMove;

  @override
  Widget build(BuildContext context) {
    return google.GoogleMap(
      initialCameraPosition: google.CameraPosition(
        target: google.LatLng(lat, lng),
        zoom: zoom,
      ),
      onCameraMove: (google.CameraPosition cameraPosition) {
        onCameraMove(cameraPosition);
      },
      markers: stationsList.map((station) {
        return google.Marker(
          markerId: google.MarkerId(
              '${station.location.latitude}-${station.location.longitude}'),
          position: google.LatLng(
              station.location.latitude, station.location.longitude),
          onTap: () {
            onPress(station.id);
          },
        );
      }).toSet(),
    );
  }
}