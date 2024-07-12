import 'package:flutter/material.dart';
import 'package:weather_app/controllers/theme_controller.dart';

class Resumo extends StatelessWidget {
  final String city;
  final String description;
  final double actualTemperature;
  final double maxTemperature;
  final double minTemperature;
  final int numberIcon;

  const Resumo({
    super.key,
    required this.city,
    required this.description,
    required this.actualTemperature,
    required this.maxTemperature,
    required this.minTemperature,
    required this.numberIcon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.all(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                const Icon(Icons.brightness_6_outlined),
                Switch(
                  value: ThemeController.instance.useThemeDark,
                  onChanged: (valor) {
                    ThemeController.instance.changeTheme();
                  },
                ),
              ],
            ),
          ],
        ),
        Text(
          city,
          style: const TextStyle(fontSize: 18),
        ),
        const Padding(padding: EdgeInsets.all(5)),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('images/$numberIcon.png')),
              const Padding(padding: EdgeInsets.all(2)),
              Text(
                '${actualTemperature.toStringAsFixed(0)} °C',
                style: TextStyle(fontSize: 40),
              ),
              const VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${maxTemperature.toStringAsFixed(0)} °C'),
                  Text('${minTemperature.toStringAsFixed(0)} °C'),
                ],
              ),
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Text(description),
      ],
    );
  }
}