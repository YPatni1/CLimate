import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;
  void getPermission() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
  }

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
