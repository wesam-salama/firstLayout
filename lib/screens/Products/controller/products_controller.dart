import 'package:flutter/material.dart';
import 'package:layouts/core/netWork/dio_client.dart';
import 'package:layouts/screens/Products/models/products_model.dart';

class ProductsController extends ChangeNotifier{
  List<ProductsModel>? products;
  bool isLoading = true;

    getAllProducts() async{
      isLoading = true;
      products = await  DioClient.dioClient.getAllProducts();
      isLoading = false;
      notifyListeners();
    }
}