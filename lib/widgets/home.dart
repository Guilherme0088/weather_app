import 'package:flutter/material.dart';
import 'package:weather_app/models/preview_hours.dart';
import 'package:weather_app/services/preview_service.dart';
import 'package:weather_app/widgets/next_temperature.dart';
import 'package:weather_app/widgets/resumo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<PreviewHours> lastPreview;

  @override
  void initState() {
    super.initState();
    PreviewService service = PreviewService();
    lastPreview = service.retrieveLastForecast();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preview'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Resumo(
              city: 'Sobradinho-DF',
              actualTemperature: 26,
              maxTemperature: 29,
              minTemperature: 14,
              description: 'Ensolarado',
              numberIcon: 1,
            ),
            Padding(padding: EdgeInsets.all(10)),
            NextTemperature(previews: lastPreview, key: null,)
          ],
        ),
      ),
    );
  }
}
