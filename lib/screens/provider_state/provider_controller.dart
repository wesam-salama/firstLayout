import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier{

  int _number1 = 0;
  int _number2 = 1;


  int get number1 => _number1;
  int get number2 => _number2;

  void add(){
    _number1++;
    _number2++;
    notifyListeners();
  }

  void addTo1(){
    _number1++;
    notifyListeners();
  }

  void addTo2(){
    _number2++;
    notifyListeners();
  }
























  String name = 'Ahmed';

  changeName(){
    name = 'Wesam';
    notifyListeners();
  }

}