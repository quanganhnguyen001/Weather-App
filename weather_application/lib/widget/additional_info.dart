import 'package:flutter/material.dart';

TextStyle titleFont = TextStyle(fontWeight: FontWeight.w600, fontSize: 18);
TextStyle infoFont = TextStyle(fontWeight: FontWeight.w400, fontSize: 18);

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({
    Key? key,
    required this.wind,
    required this.humidity,
    required this.pressure,
    required this.feel,
  }) : super(key: key);
  final String wind;
  final String humidity;
  final String pressure;
  final String feel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Wind',
                style: titleFont,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Pressure',
                style: titleFont,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                wind,
                style: infoFont,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                pressure,
                style: infoFont,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Humidity',
                style: titleFont,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Feel',
                style: titleFont,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                humidity,
                style: infoFont,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                feel,
                style: infoFont,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
