import 'package:commerce_app/view/screen/auth/forgetPasswordScreen.dart';
import 'package:commerce_app/view/screen/auth/loginScreen.dart';
import 'package:commerce_app/view/widget/SideBar.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoute {
  static const authScreen = '/auth_screen';
  static  const forgetPasswordScreen = '/forgetPasswordScreen';
  static const sideBar ='/sideBar';


  static final routes = [

  GetPage(
  name: AppRoute.authScreen ,
  page: () => const AuthScreen(),
  ),

    GetPage(
      name: AppRoute.forgetPasswordScreen ,
      page: () => const ForgetPasswordScreen(),
    ),

    GetPage(
      name: AppRoute.sideBar,
      page: () => SideBar(),
    ),

  ];
}