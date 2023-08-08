import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:layouts/screens/favorites/models/favorite_data_model.dart';
import 'package:layouts/screens/favorites/repository/my_fav_repository.dart';

class MyFavoriteController extends ChangeNotifier{

  List<FavoriteDataModel>? favListData;

  bool isLoading = true;

  void getFavData() async{
    isLoading = true;
    favListData = await MyFavRepository.getFavData();
    isLoading = false;
    log('${favListData?.length}');
    notifyListeners();
  }

}