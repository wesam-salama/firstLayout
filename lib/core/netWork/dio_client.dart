import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:layouts/core/netWork/api_constants.dart';
import 'package:layouts/screens/Products/models/products_model.dart';

class DioClient {
  DioClient._() {
    initDio();
  }

  static final DioClient dioClient = DioClient._();

  Dio? dio;

  initDio() {
    dio = Dio();
    dio?.options.baseUrl = APIConstant.baseUrl;
  }

  getAllCategories() async {
    try {
      // throw('Test Error');
      Response response = await dio!.get(APIConstant.getAllCatrgories);
      return response.data;
    } on Exception catch (e, s) {
      log('getAllCategories: $e');
      log('getAllCategories: $s');
    }
  }

  Future<List<ProductsModel>> getAllProducts() async {
    // log('getAllProducts');
    try {
      Response response = await dio!.get(APIConstant.getAllProducts);

      List list = response.data;

      List<ProductsModel> products =
          list.map((e) => ProductsModel.fromJson(e)).toList();
      return products;
    } on Exception catch (e, s) {
      log('getAllProducts: $e');
      log('getAllProducts: $s');
      return [];
    }
  }

  Future<ProductsModel> getProductDetails({required int productId}) async {
    try {
      Response response =
          await dio!.get('${APIConstant.getAllProducts}/$productId');

      Map<String, dynamic> productMap = response.data;

      ProductsModel product = ProductsModel.fromJson(productMap);
      return product;
    } on Exception catch (e, s) {
      log('getAllProducts: $e');
      log('getAllProducts: $s');
      return ProductsModel();
    }
  }
}
