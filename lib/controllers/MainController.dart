import 'package:commerce_app/controllers/base_controller.dart';
import 'package:commerce_app/view/screen/CategoriesScreen.dart';
import 'package:commerce_app/view/screen/HomeScreen.dart';
import 'package:commerce_app/view/screen/MyOrderScreen.dart';
import 'package:commerce_app/view/screen/OffersScreen.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class MainController extends BaseController {

  RxInt currentIndex = 0.obs;

  var tabs = [
    const CategoriesScreen(),
    const OffersScreen(),
    const HomeScreen(),
   const MyOrderScreen(),
  ].obs;

  var title = [
    "Categories",
    'Offers'
    'HOME',
    'MyOrder',
  ].obs;
}

