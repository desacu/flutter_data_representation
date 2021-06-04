import 'package:flutter/material.dart';

class ProviderPatternBloc extends ChangeNotifier {
  int count = 0;

  void incrementCount() {
    count++;
    notifyListeners();
  }
}
