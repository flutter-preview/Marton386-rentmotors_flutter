import 'package:flutter/material.dart';
import '../../models/responses/presentation_station.dart';
import 'package:apple_maps_flutter/apple_maps_flutter.dart' as apple;

class MyAppleMap extends StatelessWidget {
  const MyAppleMap({
    Key? key,
    required this.lat,
    required this.lng,
    required this.zoom,
    required this.onPress,
    required this.stationsList,
    required this.onCameraMove,
  }) : super(key: key);

  final double lat;
  final double lng;
  final double zoom;
  final ValueChanged<int> onPress;
  final List<PresentationStation> stationsList;
  final ValueChanged<apple.CameraPosition> onCameraMove;

  @override
  Widget build(BuildContext context) {
    Set<apple.Annotation> createAnnotations() {
      return stationsList.map((station) {
        return apple.Annotation(
          annotationId: apple.AnnotationId(station.name),
          position: apple.LatLng(station.location.latitude, station.location.longitude),
          infoWindow: apple.InfoWindow(title: station.name),
          onTap: () {
            onPress(station.id);
          },
        );
      }).toSet();
    }

    return apple.AppleMap(
      annotations: createAnnotations(),
      initialCameraPosition: apple.CameraPosition(
        target: apple.LatLng(lat, lng),
        zoom: zoom,
      ),
      onCameraMove: (cameraPosition) {
        onCameraMove(cameraPosition);
      },
    );
  }
}