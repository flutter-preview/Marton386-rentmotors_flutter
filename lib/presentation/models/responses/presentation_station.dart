class PresentationStation {
  final int id;
  final String name;
  final String address;
  final String phone;
  final String shortCode;
  final int timezone;
  final int workHourStart;
  final int workHourEnd;
  final bool hasKeyBox;
  final Location location;

  static const mainStationID = 2;

  PresentationStation({
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

  String getCity() {
    final stationName = name.split(', ');
    return stationName[0];
  }

  String getLocationName() {
    final stationName = name.split(', ');
    return stationName[1];
  }

  PresentationStation clone() {
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
      location: location.clone(),
    );
  }
}

class Location {
  final double latitude;
  final double longitude;

  const Location({
    required this.latitude,
    required this.longitude,
  });

  Location clone() {
    return Location(
      latitude: latitude,
      longitude: longitude,
    );
  }
}