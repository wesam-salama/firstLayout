import 'package:flutter/material.dart';
import 'package:layouts/core/netWork/dio_client.dart';

class StoreController extends ChangeNotifier {
  List? categoriesList;
  bool isLoading = true;

  getCategoriesData() async {
    isLoading = true;
    categoriesList = await DioClient.dioClient.getAllCategories();
    isLoading = false;
    notifyListeners();
  }
}
