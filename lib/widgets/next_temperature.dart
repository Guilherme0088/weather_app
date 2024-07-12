import 'package:flutter/material.dart';
import 'package:weather_app/models/preview_hours.dart';

class NextTemperature extends StatelessWidget {
  final List<PreviewHours> previews;

  const NextTemperature({required Key? key, required this.previews}) : super(key: key);

  Card createCardPreview(int i) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(image: AssetImage('images/${previews[i].numberIcon}.png')),
          const Padding(padding: EdgeInsets.all(2)),
          Text('${previews[i].timetable}'),
          const Padding(padding: EdgeInsets.all(2)),
          Text('${previews[i].temperature.toStringAsFixed(0)}°C'),
          const Padding(padding: EdgeInsets.all(5)),
          Text('${previews[i].description}'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: previews.length,
        shrinkWrap: true,
        itemBuilder: (context, i) {
          return createCardPreview(i);
        },
      ),
    );
  }
}