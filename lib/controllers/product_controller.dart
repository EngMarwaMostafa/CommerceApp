import 'package:commerce_app/controllers/base_controller.dart';
import 'package:commerce_app/models/banner_model.dart';
import 'package:commerce_app/models/category_model.dart';
import 'package:commerce_app/models/product_model.dart';
import 'package:commerce_app/services/product_services.dart';
import 'package:get/get.dart';

class ProductController extends BaseController {
  final _services = ProductServices();
  Future<ProductModel>? futureData;
  Future<ProductModel>? search;
  Future<CategoryModel>? category;
  Future<BannerModel>? banners;

  final text = ''.obs;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    futureData = _services.fetchData();
    category = _services.getCategory();
    banners = _services.getBanner();
  }

}
