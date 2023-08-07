import 'package:flutter/material.dart';

class ProviderController2 extends ChangeNotifier{
  String name2 = 'Khaled';

  changeName2(){
    name2 = 'Hani';
    /// This line to update UI
    notifyListeners();
  }
}