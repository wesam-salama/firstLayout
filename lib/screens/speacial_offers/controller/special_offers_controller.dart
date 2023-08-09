
import 'package:flutter/material.dart';
import 'package:layouts/screens/speacial_offers/models/special_offers_model.dart';
import 'package:layouts/screens/speacial_offers/repository/special_offers_repository.dart';

class SpecialOffersController extends ChangeNotifier{
  List<SpecialOffersModel>? specialOffersDataList;
  bool isLoading = true;

    getData() async{
      isLoading = true;
      specialOffersDataList = await SpeialOffersRepository.getSpeaialOffersData();
      isLoading = false;
      notifyListeners();
    }
}