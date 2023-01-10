import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isdrk = false;

  void changeTheme() {
    isdrk = !isdrk;
    notifyListeners();
  }
}
