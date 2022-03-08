import 'package:commerce_app/models/brands_model.dart';
import 'package:commerce_app/services/brands_services.dart';

import 'base_controller.dart';

class BrandsController extends BaseController {
  final _services = BrandsServices();
  Future<BrandsModel>? getBrands;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    getBrands = _services.getBrands();
  }
}
