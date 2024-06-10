import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:homeone/theme/theme.dart';

class ThemeProvider with ChangeNotifier{
  static const String themePrefKey = 'theme_pref';
  
  ThemeData _themeData = darkTheme;
  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkTheme;

  set themeData (ThemeData themeData){
    _themeData = themeData;
  }
  ThemeProvider(){
    _loadTheme();
  }
  void toggleTheme(){
    if(_themeData == lightMode){
      themeData = darkTheme;
    }else{
      themeData = lightMode;
    }
    _saveTheme();
    notifyListeners();
  }
  void _loadTheme() async {
    final box = Hive.box('mySwitchBox');
    final isDarkTheme = box.get(themePrefKey, defaultValue: false);
    _themeData = isDarkTheme ? darkTheme : lightMode;
    notifyListeners();
  }

  void _saveTheme() {
    final box = Hive.box('mySwitchBox');
    box.put(themePrefKey, _themeData == darkTheme);
  }
}