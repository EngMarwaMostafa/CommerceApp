import 'package:commerce_app/controllers/base_controller.dart';
import 'package:commerce_app/models/product_model.dart';
import 'package:commerce_app/services/product_services.dart';
import 'package:get/get.dart';

class ProductController extends BaseController {
  final _services = ProductServices();
  Future<ProductModel>? future;
  Future<ProductModel>? search;
  final text = ''.obs;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    future = _services.fetchData();
  }

  searchData(String label) {
    search = _services.searchData(label);
  }
}
