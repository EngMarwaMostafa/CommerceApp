import 'package:commerce_app/controllers/base_controller.dart';
import 'package:commerce_app/models/product_model.dart';
import 'package:commerce_app/services/product_services.dart';

class ProductController extends BaseController {
  final _services = ProductServices();
  Future<ProductModel>? future;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    future = _services.fetchApi();
  }
}
