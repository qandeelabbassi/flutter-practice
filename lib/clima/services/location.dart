import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<Position> getCurrentLocation() {
    return Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low)
        .then((position) {
      latitude = position.latitude;
      longitude = position.longitude;
      return position;
    }).catchError((e) {
        print("error occured: $e");
      return Future.error("getCurrentPosition resulted in error: $e");
    });
  }
}
