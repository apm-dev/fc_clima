import 'package:fc_clima/screens/location_screen.dart';
import 'package:fc_clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getWeatherDataByCurrentLocation();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return LocationScreen(weatherData);
      }),
    );
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

// API , Application Programming Interface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
