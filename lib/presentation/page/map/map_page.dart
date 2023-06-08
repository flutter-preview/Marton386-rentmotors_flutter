import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../widgets/map/my_map_widget.dart';
import '../../viewModels/map_view_model.dart';
import '../../viewModels/station_view_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';
import 'package:flutter_map/flutter_map.dart' as open_street;
import 'package:apple_maps_flutter/apple_maps_flutter.dart' as apple;
import 'package:google_maps_flutter/google_maps_flutter.dart' as google;

class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key,
    required this.onPress,
    required this.onMarkerPress,
  });
  final VoidCallback onPress;
  final VoidCallback onMarkerPress;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool? isGooglePlayServicesAvailable;
  final MapViewModel mapViewModel = GetIt.instance<MapViewModel>();
  final StationViewModel stationViewModel = GetIt.instance<StationViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Text(
            LocaleKeys.on_map.tr(),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              widget.onPress();
            },
          ),
        ),
      ),
      body: MyMapWidget(
        lat: mapViewModel.lat,
        lng: mapViewModel.lng,
        zoom: mapViewModel.zoom,
        onPress: (int id) {
          stationViewModel.selectStation(id);
          widget.onMarkerPress();
        },
        stationsList: stationViewModel.stations,
        onAppleCameraMove: (apple.CameraPosition position) {
          mapViewModel.lat = position.target.latitude;
          mapViewModel.lng = position.target.longitude;
          mapViewModel.zoom = position.zoom;
        },
        onGoogleCameraMove: (google.CameraPosition position) {
          mapViewModel.lat = position.target.latitude;
          mapViewModel.lng = position.target.longitude;
          mapViewModel.zoom = position.zoom;
        },
        onOpenStreetCameraMove: (open_street.MapPosition position) {
          mapViewModel.lat = position.center?.latitude ?? 10;
          mapViewModel.lng = position.center?.longitude ?? 10;
          mapViewModel.zoom = position.zoom ?? 10;
        },
      ),
    );
  }
}