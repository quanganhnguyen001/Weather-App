import 'package:flutter/material.dart';
import 'package:weather_application/models/weather.dart';
import 'package:weather_application/services/weather_api_client.dart';

import '../widget/additional_info.dart';
import '../widget/current_weather.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather('Ohio');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        title: Text(
          'Weather',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CurrentWeather(
                  icon: Icons.wb_sunny_rounded,
                  temp: data!.temp.toString(),
                  location: data!.cityName.toString(),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Additional Info',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold),
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                AdditionalInfo(
                  wind: '${data!.wind}',
                  pressure: '${data!.pressure}',
                  humidity: '${data!.humidity}',
                  feel: '${data!.feels_like}',
                ),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
