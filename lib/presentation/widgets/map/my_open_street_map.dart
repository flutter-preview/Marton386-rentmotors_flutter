import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import '../../models/responses/presentation_station.dart';
import 'package:flutter_map/flutter_map.dart' as open_street;
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';


class MyOpenStreetMap extends StatelessWidget {
  const MyOpenStreetMap({
    super.key,
    required this.lat,
    required this.lng,
    required this.zoom,
    required this.onPress,
    required this.stationsList,
    required this.onPositionChanged,
  });
  final double lat;
  final double lng;
  final double zoom;
  final ValueChanged<int> onPress;
  final List<PresentationStation> stationsList;
  final ValueChanged<open_street.MapPosition> onPositionChanged;

  @override
  Widget build(BuildContext context) {
    return open_street.FlutterMap(
      options: open_street.MapOptions(
        center: LatLng(lat, lng),
        zoom: zoom,
        onPositionChanged: (position, hasGesture) {
          onPositionChanged(position);
        },
      ),
      children: [
        open_street.TileLayer(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: const ['a', 'b', 'c'],
        ),
        MarkerClusterLayerWidget(
          options: MarkerClusterLayerOptions(
            maxClusterRadius: 120,
            disableClusteringAtZoom: 16,
            size: const Size(40, 40),
            fitBoundsOptions:
            const open_street.FitBoundsOptions(padding: EdgeInsets.all(50)),
            markers: stationsList.map((station) {
              var latit = station.location.latitude;
              var long = station.location.longitude;
              if (latit > 90) {
                var temp = latit;
                latit = long;
                long = temp;
              }
              return open_street.Marker(
                point: LatLng(latit, long),
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    onPress(station.id);
                  },
                  child: const Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 50,
                  ),
                ),
              );
            }).toList(),
            polygonOptions: const PolygonOptions(
              borderStrokeWidth: 3,
              color: Colors.black12,
            ),
            builder: (context, markers) {
              return FloatingActionButton(
                onPressed: null,
                child: Text(markers.length.toString()),
              );
            },
          ),
        ),
      ],
    );
  }
}