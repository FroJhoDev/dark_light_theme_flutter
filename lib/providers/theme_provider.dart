import 'package:flutter/material.dart';

import '../styles/theme_data_style.dart';

class ThemeProvider extends ChangeNotifier {

  ThemeData _themeDataStyle = ThemeDataStyle.light;

  ThemeData get themeDataStyle => _themeDataStyle;

  set themeDataStyle (ThemeData themeData) {
   _themeDataStyle = themeData;
   notifyListeners();
  }

  void changeTheme() {
    if (_themeDataStyle == ThemeDataStyle.light) {
      themeDataStyle = ThemeDataStyle.dark;
    } else {
      themeDataStyle = ThemeDataStyle.light;
    }
  }
  
}