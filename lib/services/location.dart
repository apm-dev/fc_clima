import 'dart:io';

class Location {
  double latitude;
  double longitude;

  void getCurrentLocation() async {
    try {
      /* Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude; */

      // fake lat, lon for development only
      // TODO: remove this line
      latitude = 32.646293;
      longitude = 51.667746;
    } catch (e) {
      print(e);
    }
  }
}
