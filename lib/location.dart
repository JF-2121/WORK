import 'package:geolocator/geolocator.dart';

class Location {

  Location({required this.lat,required this.long});

  double lat;
  double long;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      long = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}