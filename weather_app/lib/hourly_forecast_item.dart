import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String timestamp;
  final IconData cloudicon;
  final String tempattime;

  const HourlyForecastItem({
    super.key,
    required this.timestamp,
    required this.cloudicon,
    required this.tempattime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 100,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Text(
              timestamp,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 8),

            Icon(cloudicon, size: 32),

            SizedBox(height: 8),

            Text(tempattime),
          ],
        ),
      ),
    );
  }
}
