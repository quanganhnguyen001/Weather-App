import 'package:flutter/material.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({
    Key? key,
    required this.temp,
    required this.icon,
    required this.location,
  }) : super(key: key);
  final String temp;
  final IconData icon;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.orange,
              size: 64,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              temp,
              style: TextStyle(fontSize: 46),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              location,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
