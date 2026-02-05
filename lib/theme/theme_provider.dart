
// to switch between theme modes

import 'package:flutter/material.dart';
import 'package:notes_app/theme/theme.dart';


class ThemeProvider with ChangeNotifier {
  // initial theme mode is light mode
  ThemeData _themeData = lightMode;
  
  // getter method for themeData
  ThemeData get themeData => _themeData;

  // to check if dark mode is enabled
  bool get darkModeEnabled => _themeData == darkMode;

  // setter method for themeData
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // to toggle the themeData, (this will call the setter method of themeData)
  void toggleTheme() {
    themeData = (darkModeEnabled ? lightMode : darkMode);
  }
}