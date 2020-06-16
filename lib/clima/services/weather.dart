import 'dart:math';

import 'package:flutter_tutorial/clima/services/location.dart';
import 'package:flutter_tutorial/clima/services/networking.dart';

const apiKey = '07de53b52321d1e61aaa650f27e9d827';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');
    return networkHelper.getData().then((weatherData) {
      return weatherData;
    }).catchError((error) {
      return Future.error("error: $error");
    });
  }

  Future<dynamic> getLocationWeather() {
    Location location = Location();
    return location.getCurrentLocation().then((position) {
      NetworkHelper networkHelper = NetworkHelper(
          '$openWeatherMapURL?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey&units=metric');
      return networkHelper.getData();
    }).then((weatherData) {
      return weatherData;
    }).catchError((error) {
      return Future.error("error: $error");
    });
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
