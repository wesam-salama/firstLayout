import 'dart:developer';

import 'package:layouts/screens/speacial_offers/models/special_offers_model.dart';

class SpeialOffersRepository{

  static Future<List<SpecialOffersModel>> getSpeaialOffersData() async{
    log('SpeialOffersRepository:getSpeaialOffersData');
    await Future.delayed(const Duration(seconds: 4));
    List<SpecialOffersModel> specialOffersListModel =  specialOffersData.map((e) => SpecialOffersModel.fromJson(e)).toList();
    log('specialOffersListModel:length:${specialOffersListModel.length}');
    return specialOffersListModel;
  }
}







List<Map<String, dynamic>> specialOffersData = [
  {
    "id":1,
    "imageURL":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU",
    "per":5.5,
    "des":"First offer"
  },
  {
    "id":2,
    "imageURL":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU",
    "per":10.5,
    "des":"Second offer"
  },
  {
    "id":3,
    "imageURL":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU",
    "per":50.5,
    "des":"Third offer"
  },
];