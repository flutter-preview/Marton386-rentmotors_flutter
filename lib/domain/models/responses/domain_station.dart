import '../../../data/models/responses/station/data_station.dart';
import '../../../presentation/models/responses/presentation_station.dart';

class DomainStation {
  final int id;
  final String name;
  final String address;
  final String phone;
  final String shortCode;
  final int timezone;
  final int workHourStart;
  final int workHourEnd;
  final bool hasKeyBox;
  final DomainLocation location;

  static const mainStationID = 2;

  DomainStation({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.shortCode,
    required this.timezone,
    required this.workHourStart,
    required this.workHourEnd,
    required this.hasKeyBox,
    required this.location,
  });

  factory DomainStation.fromData(DataStation data) {
    return DomainStation(
      id: data.id,
      name: data.title,
      address: data.address,
      phone: data.phone,
      shortCode: data.short_code,
      timezone: data.GMT,
      workHourStart: data.worktime.day1.start,
      workHourEnd: data.worktime.day1.finish,
      hasKeyBox: data.worktime.day1.ooh_service,
      location: DomainLocation.fromData(data.position),
    );
  }

  PresentationStation toPress() {
    return PresentationStation(
      id: id,
      name: name,
      address: address,
      phone: phone,
      shortCode: shortCode,
      timezone: timezone,
      workHourStart: workHourStart,
      workHourEnd: workHourEnd,
      hasKeyBox: hasKeyBox,
      location: location.toPress(),
    );
  }
}

class DomainLocation {
  final double latitude;
  final double longitude;

  const DomainLocation({
    required this.latitude,
    required this.longitude,
  });

  factory DomainLocation.fromData(PositionDTO data) {
    return DomainLocation(
      latitude: data.latitude,
      longitude: data.longitude,
    );
  }

  Location toPress() {
    return Location(
      latitude: latitude,
      longitude: longitude,
    );
  }
}
