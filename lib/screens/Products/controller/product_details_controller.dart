import 'package:flutter/material.dart';
import 'package:layouts/core/netWork/dio_client.dart';
import 'package:layouts/screens/Products/models/products_model.dart';

class ProductDetailsController extends ChangeNotifier{
  ProductsModel? product;
  bool isLoading = true;

  getProductDetails({required int productId}) async{
    isLoading = true;
    product = await  DioClient.dioClient.getProductDetails(productId: productId);
    isLoading = false;
    notifyListeners();
  }
}