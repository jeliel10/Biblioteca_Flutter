import 'dart:convert';

import 'package:biblioteca/models/product_model.dart';
import 'package:flutter/services.dart';

class ProductService {
  static Future<List<Product>> getProducts() async {
    String productData =
        await rootBundle.loadString('assets/json/products.json');
    List<dynamic> productsData = jsonDecode(productData);
    return productsData.map((json) => Product.fromJson(json)).toList();
  }
}
