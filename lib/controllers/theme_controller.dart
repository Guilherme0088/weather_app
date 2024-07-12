import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  bool useThemeDark;
  static final ThemeController instance = ThemeController._internal();

  ThemeController._internal() : useThemeDark = false;

  void changeTheme() {
    useThemeDark = !useThemeDark;
    notifyListeners();
  }
}