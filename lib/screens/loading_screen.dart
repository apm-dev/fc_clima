import 'package:fc_clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    http.Response response = await http.get(
        "http://api.openweathermap.org/data/2.5/weather?q=Tehran&appid=4388e16b4d56be56cbfedbe085f37839&units=metric");

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

// API , Application Programming Interface
  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
