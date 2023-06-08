import 'dart:io';
import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../widgets/map/my_map_widget.dart';
import '../../widgets/next_button_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../viewModels/station_view_model.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_map/flutter_map.dart' as open_street;
import 'package:apple_maps_flutter/apple_maps_flutter.dart' as apple;
import 'package:google_maps_flutter/google_maps_flutter.dart' as google;
import 'package:rentmotors/presentation/viewModels/booking_view_model.dart';

class StationInfo extends StatelessWidget {
  StationInfo({
    super.key,
    required this.onBackPress,
    required this.onBookPress,
  });

  final VoidCallback onBackPress;
  final VoidCallback onBookPress;
  final BookingViewModel startBookViewModel = GetIt.instance<BookingViewModel>();
  final StationViewModel stationViewModel = GetIt.instance<StationViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Text(
            stationViewModel.stations[stationViewModel.selectedStation].name,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              onBackPress();
              stationViewModel.selectedStation = -1;
            },
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: MyMapWidget(
              lat: stationViewModel
                  .stations[stationViewModel.selectedStation].location.latitude,
              lng: stationViewModel.stations[stationViewModel.selectedStation]
                  .location.longitude,
              zoom: 15.0,
              onPress: (int id) {},
              stationsList: [
                stationViewModel.stations[stationViewModel.selectedStation]
              ],
              onAppleCameraMove: (apple.CameraPosition value) {},
              onGoogleCameraMove: (google.CameraPosition value) {},
              onOpenStreetCameraMove: (open_street.MapPosition value) {},
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      LocaleKeys.address.tr(),
                      style: Global.searchText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            stationViewModel.stations[
                              stationViewModel.selectedStation
                            ].address,
                            maxLines: 2,
                            style: Global.headerText,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Transform.rotate(
                          angle: 0.8,
                          child: IconButton(
                            icon: const Icon(
                              Icons.navigation,
                              size: 27,
                              color: Global.darkGreen,
                            ),
                            onPressed: () {
                              openMapsApp(
                                  latitude: stationViewModel.stations[
                                    stationViewModel.selectedStation
                                  ].location.latitude,
                                  longitude: stationViewModel.stations[
                                    stationViewModel.selectedStation
                                  ].location.longitude);
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      LocaleKeys.phone.tr(),
                      style: Global.searchText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            stationViewModel.stations[
                            stationViewModel.selectedStation
                            ].phone,
                            maxLines: 2,
                            style: Global.headerText,
                          ),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          icon: const Icon(
                            Icons.phone,
                            size: 27,
                            color: Global.darkGreen,
                          ),
                          onPressed: () {
                            callPhoneNumber(
                              stationViewModel.stations[
                                stationViewModel.selectedStation
                                ].phone,);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      LocaleKeys.work_hours.tr(),
                      style: Global.searchText,
                    ),
                    Text(
                      LocaleKeys.daily_work_hours.tr(
                        namedArgs: {
                          'firstTime': stationViewModel.stations[
                          stationViewModel.selectedStation
                          ].workHourStart.toString(),
                          'secondTime': stationViewModel.stations[
                          stationViewModel.selectedStation
                          ].workHourEnd.toString(),
                        },
                      ),
                      style: Global.headerText,
                    ),
                    const SizedBox(height: 30),
                    NextButtonWidget(
                      text: LocaleKeys.book.tr(),
                      nextAct: () {
                        onBookPress();
                        startBookViewModel.setStartStation(stationViewModel
                            .stations[stationViewModel.selectedStation]);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> openMapsApp({required double latitude, required double longitude}) async {
    final url = Platform.isIOS ?
    Uri.parse('maps://maps.apple.com/?q=$latitude,$longitude'):
    Uri.parse('geo:$latitude,$longitude');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Не удалось открыть приложение карт.';
    }
  }

  Future<void> callPhoneNumber(String phoneNumber) async {
    final url = Uri.parse('tel:$phoneNumber');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Не удалось открыть приложение телефона.';
    }
  }
}