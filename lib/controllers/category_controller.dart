import 'package:commerce_app/controllers/base_controller.dart';
import 'package:commerce_app/models/category_model.dart';
import 'package:commerce_app/services/product_services.dart';

class CategoryController extends BaseController {
  final _services = ProductServices();
  Future<CategoryModel>? future;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    future = _services.getCategory();
  }
}
