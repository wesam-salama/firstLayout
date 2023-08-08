import 'dart:developer';
import 'package:layouts/screens/favorites/models/favorite_data_model.dart';

class MyFavRepository{
  static Future<List<FavoriteDataModel>> getFavData() async{
    log('MyFavRepository:getFavData');
    await Future.delayed(const Duration(seconds: 3));
    List<FavoriteDataModel> myFavoriteDataModels =  myFavoriteData.map((e) => FavoriteDataModel.fromJson(e)).toList();
    log('MyFavRepository:length:${myFavoriteDataModels.length}');
    return myFavoriteDataModels;
  }
}


List<Map<String, dynamic>> myFavoriteData = [
  {
    "id":1,
    "imageURL":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU",
    "itemName":"Chicken Burger",
    "itemStoreName":"Burger King",
    "price":33.00
  },
  {
    "id":2,
    "imageURL":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU",
    "itemName":"Beef Burger",
    "itemStoreName":"Burger King",
    "price":99.00
  },
  {
    "id":3,
    "imageURL":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU",
    "itemName":"Pizza Hut",
    "itemStoreName":"Burger King",
    "price":130.00
  },
  // {
  //   "id":4,
  //   "imageURL":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU",
  //   "itemName":"Beef Kreep",
  //   "itemStoreName":"Burger King",
  //   "price":5.00
  // },
  // {
  //   "id":5,
  //   "imageURL":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU",
  //   "itemName":"Chicken Burger 2",
  //   "itemStoreName":"Burger King",
  //   "price":200.00
  // },
];