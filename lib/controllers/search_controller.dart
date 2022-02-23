import 'package:commerce_app/controllers/base_controller.dart';
import 'package:commerce_app/models/product_model.dart';
import 'package:commerce_app/services/product_services.dart';
import 'package:get/get.dart';

class SearchController extends BaseController {
  final _services = ProductServices();
  final isSearch = false.obs;
  Future<ProductModel>? data;

  onFilter(String label) {
    isSearch.value = true;
    data = _services.searchData(label);
  }

}
