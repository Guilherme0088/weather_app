import 'package:weather_app/models/preview_hours.dart';

class PreviewService {
  List<PreviewHours> retrieveLastForecast() {
    return [
      PreviewHours(timetable: '11:00', description: 'Ensolarado', numberIcon: 1, temperature: 32),
      PreviewHours(timetable: '12:00', description: 'Ensolarado', numberIcon: 1, temperature: 32),
      PreviewHours(timetable: '13:00', description: 'Ensolarado', numberIcon: 1, temperature: 33),
      PreviewHours(timetable: '14:00', description: 'Ensolarado', numberIcon: 1, temperature: 34),
      PreviewHours(timetable: '15:00', description: 'Ensolarado', numberIcon: 1, temperature: 35),
      PreviewHours(timetable: '16:00', description: 'Ensolarado', numberIcon: 1, temperature: 34),
      PreviewHours(timetable: '17:00', description: 'Parcialmente ensolarado', numberIcon: 2, temperature: 32),
      PreviewHours(timetable: '18:00', description: 'Nuvens esparsas', numberIcon: 3, temperature: 29),
      PreviewHours(timetable: '19:00', description: 'Nuvens esparsas', numberIcon: 3, temperature: 26),
      PreviewHours(timetable: '20:00', description: 'Nuvens esparsas', numberIcon: 3, temperature: 25),
    ];
  }
}