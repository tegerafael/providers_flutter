import 'package:flutter/material.dart';

class Soma with ChangeNotifier {
  int valor = 0;
  void contador() {
    valor++;
    notifyListeners();
  }

  void reset() {
    valor = 0;
    notifyListeners();
  }
}
