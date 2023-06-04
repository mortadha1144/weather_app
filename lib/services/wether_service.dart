import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherService {
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = 'ecfa22fcdc084f3e996171754230406';
 Future<void> getWeather({required String cityName}) async {
    Uri url = Uri.parse(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

    http.Response response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);
  }
}