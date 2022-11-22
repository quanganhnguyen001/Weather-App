import 'package:flutter/material.dart';

import '../widget/additional_info.dart';
import '../widget/current_weather.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CurrentWeather(
            icon: Icons.wb_sunny_rounded,
            temp: '26',
            location: 'VN',
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
            wind: '24',
            pressure: '1014',
            humidity: '2',
            feel: '24.6',
          ),
        ],
      ),
    );
  }
}
