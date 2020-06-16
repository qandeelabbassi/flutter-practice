import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_tutorial/clima/services/location.dart';
import 'package:flutter_tutorial/clima/services/networking.dart';
import 'package:flutter_tutorial/clima/services/weather.dart';
import 'package:flutter_tutorial/clima/utilities/constants.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude, longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() {
    WeatherModel().getLocationWeather().then((weatherData) {
      Navigator.pushNamed(context, 'clima_location_screen',
              arguments: weatherData)
          .then((value) => Navigator.pop(context));
    }).catchError((onError) => print(onError));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
