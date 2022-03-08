import 'package:commerce_app/models/brands_model.dart';
import 'package:dio/dio.dart';

class BrandsServices {
  final Dio _dio = Dio();

  final String baseurl = "https://findfamily.net/eshop/api/buyers";

  Future<BrandsModel> getBrands() async {
    Response response =
    await _dio.get("$baseurl/shops");
    if (response.statusCode == 200) {
      // print(response.data);
      return BrandsModel.fromJson(response.data);
    }
    throw 'exception';
  }
}