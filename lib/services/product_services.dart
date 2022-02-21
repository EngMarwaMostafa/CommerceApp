import 'package:commerce_app/models/product_model.dart';
import 'package:dio/dio.dart';

class ProductServices {
  final Dio _dio = Dio();

  Future<ProductModel> fetchApi() async {
    Response response = await _dio.get(
        "https://findfamily.net/eshop/api/buyers/products?lang=en&categoryId=1");
    if (response.statusCode == 200) {
      print(response.data);
      return ProductModel.fromJson(response.data);
    }
    throw 'exception';
  }
}
