import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
        ],
      ),

      body: Column(
        children: [
          // main card
          const Placeholder(
            fallbackHeight: 250,
          ),

          const SizedBox(height: 20),

          // weather forecast cards
          const Placeholder(
            fallbackHeight: 150,
          ),

          const SizedBox(height: 20),

          // additional info cards
          const Placeholder(
            fallbackHeight: 150,
          ),
        ],
      ),
    );
  }
}