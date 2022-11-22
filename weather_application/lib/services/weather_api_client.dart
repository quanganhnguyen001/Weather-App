import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_application/models/weather.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=1ece36a5cc0a039174c30b59dcb79fd9&units=metric');
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);

    return Weather.fromJson(body);
  }
}
