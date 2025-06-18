import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_info_widget.dart';
import 'package:weather_app/hourly_forecast_item.dart';

import 'package:http/http.dart' as http;

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  Future getCurrentWeather() async {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300 K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 16),

                          Icon(Icons.cloud, size: 64),

                          SizedBox(height: 16),

                          Text('Rain', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Weather Forecast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),

            const SizedBox(height: 16),
            // weather forecast cards
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    timestamp: '00:00',
                    cloudicon: Icons.cloud,
                    tempattime: '320.12',
                  ),
                  HourlyForecastItem(
                    timestamp: '01:00',
                    cloudicon: Icons.sunny,
                    tempattime: '312.00',
                  ),
                  HourlyForecastItem(
                    timestamp: '02:00',
                    cloudicon: Icons.cloud,
                    tempattime: '345.45',
                  ),
                  HourlyForecastItem(
                    timestamp: '03:00',
                    cloudicon: Icons.sunny_snowing,
                    tempattime: '365.23',
                  ),
                  HourlyForecastItem(
                    timestamp: '04:00',
                    cloudicon: Icons.cloud,
                    tempattime: '295.98',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoWidget(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  value: '94',
                ),
                AdditionalInfoWidget(
                  icon: Icons.air,
                  label: 'Wind Speed',
                  value: '7.67',
                ),
                AdditionalInfoWidget(
                  icon: Icons.speed,
                  label: 'Pressure',
                  value: '1006',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
