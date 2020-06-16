import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<dynamic> getData() {
    return http.get(url).then((response) {
      String data = response.body;
      return jsonDecode(data);
    }).catchError((e) {
      print("error occured: $e");
      return Future.error("error fetching weather data: $e");
    });
  }
}
