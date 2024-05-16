import 'package:chatapp/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themedata => _themeData;

  bool get isDarkMode => _themeData == darkMode;
  set isDarkMode(bool isDarkMode) => _themeData == darkMode;

  set themedata(ThemeData themeData) {
    _themeData = themeData;

    notifyListeners();
  }

  void toggleTheme() {
    themedata = isDarkMode ? lightMode : darkMode;
    print("${isDarkMode} ===============");
  }
}
