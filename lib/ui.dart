import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UI extends ChangeNotifier{
  double _fontSize=0.5;

  set fontSize(newValue)
  {
    _fontSize=newValue;
    notifyListeners();
  }

  double get fontSize=>_fontSize*30;

  double get sliderFontSize => _fontSize;

}
