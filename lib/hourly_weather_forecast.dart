import 'package:flutter/material.dart';

class HourlyWeatherForecast extends StatelessWidget {
  final String time;
  final String url;
  final String temp;
  const HourlyWeatherForecast({
    super.key,
    required this.time,
    required this.temp,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 180,
          height: 180,
          child: Column(
            children: [
              Text(
                time,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              Image.network(url),
              const SizedBox(height: 10),
              Text(
                temp,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
