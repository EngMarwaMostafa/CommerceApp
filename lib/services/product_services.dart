import 'package:commerce_app/models/banner_model.dart';
import 'package:commerce_app/models/category_model.dart';
import 'package:commerce_app/models/product_model.dart';
import 'package:dio/dio.dart';

class ProductServices {
  final Dio _dio = Dio();

  final String baseurl = "https://findfamily.net/eshop/api/buyers";

  Future<ProductModel> fetchData() async {
    Response response =
        await _dio.get("$baseurl/products?lang=en&categoryId=1");
    if (response.statusCode == 200) {
      // print(response.data);
      return ProductModel.fromJson(response.data);
    }
    throw 'exception';
  }

  Future<ProductModel> searchData(String label) async {
    Response response = await _dio.get("$baseurl/products/search?name=$label");
    if (response.statusCode == 200) {
      // print(response.data);
      return ProductModel.fromJson(response.data);
    }
    throw 'exception';
  }

  Future<CategoryModel> getCategory() async {
    Response response =
        await _dio.get("$baseurl/categotries?lang=ar&categoryTitle");
    if (response.statusCode == 200) {
      print(response.data);
      return CategoryModel.fromJson(response.data);
    }
    throw 'exception';
  }

  Future<BannerModel> getBanner() async {
    Response response = await _dio.get("$baseurl/banners");
    if (response.statusCode == 200) {
      print(response.data);
      return BannerModel.fromJson(response.data);
    }
    throw 'exception';
  }
}
